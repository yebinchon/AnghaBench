
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats {unsigned int hit_threshold; unsigned int hits; unsigned int misses; } ;



__attribute__((used)) static void stats_init(struct stats *s, unsigned nr_levels)
{
 s->hit_threshold = (nr_levels * 3u) / 4u;
 s->hits = 0u;
 s->misses = 0u;
}
