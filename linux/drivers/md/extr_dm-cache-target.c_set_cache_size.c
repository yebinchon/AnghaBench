
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {scalar_t__ cache_size; } ;
typedef scalar_t__ dm_cblock_t ;
typedef int dm_block_t ;


 int DMWARN_LIMIT (char*,unsigned long long) ;
 int from_cblock (scalar_t__) ;

__attribute__((used)) static void set_cache_size(struct cache *cache, dm_cblock_t size)
{
 dm_block_t nr_blocks = from_cblock(size);

 if (nr_blocks > (1 << 20) && cache->cache_size != size)
  DMWARN_LIMIT("You have created a cache device with a lot of individual cache blocks (%llu)\n"
        "All these mappings can consume a lot of kernel memory, and take some time to read/write.\n"
        "Please consider increasing the cache block size to reduce the overall cache block count.",
        (unsigned long long) nr_blocks);

 cache->cache_size = size;
}
