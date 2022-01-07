
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sector_t ;


 scalar_t__ too_many_discard_blocks (int,int) ;

__attribute__((used)) static sector_t calculate_discard_block_size(sector_t cache_block_size,
          sector_t origin_size)
{
 sector_t discard_block_size = cache_block_size;

 if (origin_size)
  while (too_many_discard_blocks(discard_block_size, origin_size))
   discard_block_size *= 2;

 return discard_block_size;
}
