#!/bin/bash

# Practical 12 : Check whether a file has read, write and execute permission

if [ $# -ne 1 ]
then
    echo "Usage: $0 <filename>"
    exit 1
fi

file=$1

if [ ! -e "$file" ]
then
    echo "File $file does not exist"
    exit 1
fi

echo "Checking permissions of : $file"

r=0
w=0
x=0

[ -r "$file" ] && r=1
[ -w "$file" ] && w=1
[ -x "$file" ] && x=1

[ $r -eq 1 ] && echo "Read permission : YES" || echo "Read permission : NO"

[ $w -eq 1 ] && echo "Write permission : YES" || echo "Write permission : NO"

[ $x -eq 1 ] && echo "Execute permission : YES" || echo "Execute permission : NO"

if [ $r -eq 1 -a $w -eq 1 -a $x -eq 1 ]
then
    echo "The file has ALL the permissions."
else
    echo "The file does NOT have all the permissions."
fi