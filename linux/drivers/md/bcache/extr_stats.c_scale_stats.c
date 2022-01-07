
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_stats {unsigned long rescale; int sectors_bypassed; int cache_miss_collisions; int cache_readaheads; int cache_bypass_misses; int cache_bypass_hits; int cache_misses; int cache_hits; } ;


 int scale_stat (int *) ;

__attribute__((used)) static void scale_stats(struct cache_stats *stats, unsigned long rescale_at)
{
 if (++stats->rescale == rescale_at) {
  stats->rescale = 0;
  scale_stat(&stats->cache_hits);
  scale_stat(&stats->cache_misses);
  scale_stat(&stats->cache_bypass_hits);
  scale_stat(&stats->cache_bypass_misses);
  scale_stat(&stats->cache_readaheads);
  scale_stat(&stats->cache_miss_collisions);
  scale_stat(&stats->sectors_bypassed);
 }
}
