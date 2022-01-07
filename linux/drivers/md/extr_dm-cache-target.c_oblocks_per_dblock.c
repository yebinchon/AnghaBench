
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int discard_block_size; int sectors_per_block_shift; int sectors_per_block; } ;
typedef int dm_block_t ;


 int block_div (int,int ) ;
 scalar_t__ block_size_is_power_of_two (struct cache*) ;

__attribute__((used)) static dm_block_t oblocks_per_dblock(struct cache *cache)
{
 dm_block_t oblocks = cache->discard_block_size;

 if (block_size_is_power_of_two(cache))
  oblocks >>= cache->sectors_per_block_shift;
 else
  oblocks = block_div(oblocks, cache->sectors_per_block);

 return oblocks;
}
