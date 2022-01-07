
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int sectors_per_block; int cache_dev; } ;
typedef int sector_t ;
typedef int dm_cblock_t ;


 int get_dev_size (int ) ;
 int sector_div (int ,int ) ;
 int to_cblock (int ) ;

__attribute__((used)) static dm_cblock_t get_cache_dev_size(struct cache *cache)
{
 sector_t size = get_dev_size(cache->cache_dev);
 (void) sector_div(size, cache->sectors_per_block);
 return to_cblock(size);
}
