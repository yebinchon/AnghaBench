
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void get_blk256_size(
  unsigned int *blk256_width,
  unsigned int *blk256_height,
  unsigned int bytes_per_element)
{
 if (bytes_per_element == 1) {
  *blk256_width = 16;
  *blk256_height = 16;
 } else if (bytes_per_element == 2) {
  *blk256_width = 16;
  *blk256_height = 8;
 } else if (bytes_per_element == 4) {
  *blk256_width = 8;
  *blk256_height = 8;
 } else if (bytes_per_element == 8) {
  *blk256_width = 8;
  *blk256_height = 4;
 }
}
