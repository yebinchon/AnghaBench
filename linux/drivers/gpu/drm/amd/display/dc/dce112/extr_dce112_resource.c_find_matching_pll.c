
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource_pool {struct clock_source** clock_sources; } ;
struct resource_context {int dummy; } ;
struct dc_stream_state {TYPE_2__* link; } ;
struct clock_source {int dummy; } ;
struct TYPE_4__ {TYPE_1__* link_enc; } ;
struct TYPE_3__ {int transmitter; } ;


 size_t DCE112_CLK_SRC_PLL0 ;
 size_t DCE112_CLK_SRC_PLL1 ;
 size_t DCE112_CLK_SRC_PLL2 ;
 size_t DCE112_CLK_SRC_PLL3 ;
 size_t DCE112_CLK_SRC_PLL4 ;
 size_t DCE112_CLK_SRC_PLL5 ;







__attribute__((used)) static struct clock_source *find_matching_pll(
  struct resource_context *res_ctx,
  const struct resource_pool *pool,
  const struct dc_stream_state *const stream)
{
 switch (stream->link->link_enc->transmitter) {
 case 133:
  return pool->clock_sources[DCE112_CLK_SRC_PLL0];
 case 132:
  return pool->clock_sources[DCE112_CLK_SRC_PLL1];
 case 131:
  return pool->clock_sources[DCE112_CLK_SRC_PLL2];
 case 130:
  return pool->clock_sources[DCE112_CLK_SRC_PLL3];
 case 129:
  return pool->clock_sources[DCE112_CLK_SRC_PLL4];
 case 128:
  return pool->clock_sources[DCE112_CLK_SRC_PLL5];
 default:
  return ((void*)0);
 };

 return 0;
}
