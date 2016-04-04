#!/bin/sh
SHORT_HASH=$(git rev-parse --short HEAD)
FILE=build/dynamic-dynamo-${SHORT_HASH}.zip
echo Writing $FILE ...
zip -r $FILE .ebextensions .aws bin .dockerignore etc Docker* boot
