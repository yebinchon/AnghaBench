
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats {int misses; } ;



__attribute__((used)) static void stats_miss(struct stats *s)
{
 s->misses++;
}
