
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_pool {struct clock_source* dp_clock_source; } ;
struct resource_context {int* clock_source_ref_count; int dp_clock_source_ref_count; } ;
struct clock_source {int dummy; } ;


 int find_matching_clock_source (struct resource_pool const*,struct clock_source*) ;

int resource_get_clock_source_reference(
  struct resource_context *res_ctx,
  const struct resource_pool *pool,
  struct clock_source *clock_source)
{
 int i = find_matching_clock_source(pool, clock_source);

 if (i > -1)
  return res_ctx->clock_source_ref_count[i];

 if (pool->dp_clock_source == clock_source)
  return res_ctx->dp_clock_source_ref_count;

 return -1;
}
