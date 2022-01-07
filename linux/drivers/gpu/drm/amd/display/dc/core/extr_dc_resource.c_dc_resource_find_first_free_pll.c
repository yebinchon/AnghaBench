
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_pool {int clk_src_count; struct clock_source** clock_sources; } ;
struct resource_context {scalar_t__* clock_source_ref_count; } ;
struct clock_source {int dummy; } ;



struct clock_source *dc_resource_find_first_free_pll(
  struct resource_context *res_ctx,
  const struct resource_pool *pool)
{
 int i;

 for (i = 0; i < pool->clk_src_count; ++i) {
  if (res_ctx->clock_source_ref_count[i] == 0)
   return pool->clock_sources[i];
 }

 return ((void*)0);
}
