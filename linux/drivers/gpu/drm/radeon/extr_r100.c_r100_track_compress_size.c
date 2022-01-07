
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int r100_track_compress_size(int compress_format, int w, int h)
{
 int block_width, block_height, block_bytes;
 int wblocks, hblocks;
 int min_wblocks;
 int sz;

 block_width = 4;
 block_height = 4;

 switch (compress_format) {
 case 129:
  block_bytes = 8;
  min_wblocks = 4;
  break;
 default:
 case 128:
  block_bytes = 16;
  min_wblocks = 2;
  break;
 }

 hblocks = (h + block_height - 1) / block_height;
 wblocks = (w + block_width - 1) / block_width;
 if (wblocks < min_wblocks)
  wblocks = min_wblocks;
 sz = wblocks * hblocks * block_bytes;
 return sz;
}
