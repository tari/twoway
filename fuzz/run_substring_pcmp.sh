#!/bin/sh

DIR=$(dirname "$0")
V=$(cat "$DIR"/nightly-version)
cargo +$V fuzz run --features=pcmp -O substring -- -only_ascii=1 -max_len=256 "$@"
