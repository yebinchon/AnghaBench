
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int dirty_bitset; int cache_size; int cmd; } ;


 scalar_t__ CM_READ_ONLY ;
 int EINVAL ;
 int dm_cache_set_dirty_bits (int ,int ,int ) ;
 int from_cblock (int ) ;
 scalar_t__ get_cache_mode (struct cache*) ;
 int metadata_operation_failed (struct cache*,char*,int) ;

__attribute__((used)) static int write_dirty_bitset(struct cache *cache)
{
 int r;

 if (get_cache_mode(cache) >= CM_READ_ONLY)
  return -EINVAL;

 r = dm_cache_set_dirty_bits(cache->cmd, from_cblock(cache->cache_size), cache->dirty_bitset);
 if (r)
  metadata_operation_failed(cache, "dm_cache_set_dirty_bits", r);

 return r;
}
