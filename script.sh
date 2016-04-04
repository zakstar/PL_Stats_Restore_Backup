#!/usr/bin/bash

echo "You are currently working in the directory `pwd`"
echo "Please provide the location of backupfiles"
read backuppath
echo "Please provide the dataset directory, where the datasets should be copied"
read datapath
mkdir xt

f=1
for i in $backuppath/*; do
	mkdir ./xt/$f
	tar -C ./xt/$f -xvzf $i && cp -r ./xt/$f/statistics-format-5/statistics/????-??-?? $datapath
	f=$(($f+1))
done

rm -r xt

exit 0

