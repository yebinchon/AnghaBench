
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_stat_collector {int cache_bypass_misses; int cache_bypass_hits; int cache_misses; int cache_hits; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void mark_cache_stats(struct cache_stat_collector *stats,
        bool hit, bool bypass)
{
 if (!bypass)
  if (hit)
   atomic_inc(&stats->cache_hits);
  else
   atomic_inc(&stats->cache_misses);
 else
  if (hit)
   atomic_inc(&stats->cache_bypass_hits);
  else
   atomic_inc(&stats->cache_bypass_misses);
}
