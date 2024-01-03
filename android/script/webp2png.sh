#!/bin/bash

RES_DIR=../app/src/main/res

find "$RES_DIR" -type f -iname \*.webp | while read -r file
do
    echo "Converting $file"
    convert "$file" "${file%.webp}.png"
    rm "$file"
done
