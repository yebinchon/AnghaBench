
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_cache_statistics {void* write_misses; void* write_hits; void* read_misses; void* read_hits; } ;
struct TYPE_2__ {int write_miss; int write_hit; int read_miss; int read_hit; } ;
struct cache {int cmd; TYPE_1__ stats; } ;


 scalar_t__ CM_READ_ONLY ;
 void* atomic_read (int *) ;
 int dm_cache_metadata_set_stats (int ,struct dm_cache_statistics*) ;
 scalar_t__ get_cache_mode (struct cache*) ;

__attribute__((used)) static void save_stats(struct cache *cache)
{
 struct dm_cache_statistics stats;

 if (get_cache_mode(cache) >= CM_READ_ONLY)
  return;

 stats.read_hits = atomic_read(&cache->stats.read_hit);
 stats.read_misses = atomic_read(&cache->stats.read_miss);
 stats.write_hits = atomic_read(&cache->stats.write_hit);
 stats.write_misses = atomic_read(&cache->stats.write_miss);

 dm_cache_metadata_set_stats(cache->cmd, &stats);
}
