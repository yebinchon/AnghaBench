
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dm_block_t ;


 int MIN_BLOCK_SIZE ;

__attribute__((used)) static bool valid_block_size(dm_block_t block_size)
{
 bool greater_than_zero = block_size > 0;
 bool multiple_of_min_block_size = (block_size & (MIN_BLOCK_SIZE - 1)) == 0;

 return greater_than_zero && multiple_of_min_block_size;
}
