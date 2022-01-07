
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats {unsigned int hit_threshold; int misses; int hits; } ;



__attribute__((used)) static void stats_level_accessed(struct stats *s, unsigned level)
{
 if (level >= s->hit_threshold)
  s->hits++;
 else
  s->misses++;
}
