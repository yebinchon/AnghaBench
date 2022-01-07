
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_cache_statistics {int write_misses; int write_hits; int read_misses; int read_hits; } ;
struct TYPE_2__ {int write_miss; int write_hit; int read_miss; int read_hit; } ;
struct cache {TYPE_1__ stats; int cmd; } ;


 int atomic_set (int *,int ) ;
 int dm_cache_metadata_get_stats (int ,struct dm_cache_statistics*) ;

__attribute__((used)) static void load_stats(struct cache *cache)
{
 struct dm_cache_statistics stats;

 dm_cache_metadata_get_stats(cache->cmd, &stats);
 atomic_set(&cache->stats.read_hit, stats.read_hits);
 atomic_set(&cache->stats.read_miss, stats.read_misses);
 atomic_set(&cache->stats.write_hit, stats.write_hits);
 atomic_set(&cache->stats.write_miss, stats.write_misses);
}
