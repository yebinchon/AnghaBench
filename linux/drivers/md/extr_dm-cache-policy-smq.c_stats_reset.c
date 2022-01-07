
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats {unsigned int hits; unsigned int misses; } ;



__attribute__((used)) static void stats_reset(struct stats *s)
{
 s->hits = s->misses = 0u;
}
