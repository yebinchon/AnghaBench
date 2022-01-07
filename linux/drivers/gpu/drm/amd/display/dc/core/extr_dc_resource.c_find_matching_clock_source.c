
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_pool {int clk_src_count; struct clock_source** clock_sources; } ;
struct clock_source {int dummy; } ;



__attribute__((used)) static int find_matching_clock_source(
  const struct resource_pool *pool,
  struct clock_source *clock_source)
{

 int i;

 for (i = 0; i < pool->clk_src_count; i++) {
  if (pool->clock_sources[i] == clock_source)
   return i;
 }
 return -1;
}
