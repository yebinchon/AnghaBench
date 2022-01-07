
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_state {int clk_mgr; } ;
struct dc {int clk_mgr; } ;



void dc_resource_state_construct(
  const struct dc *dc,
  struct dc_state *dst_ctx)
{
 dst_ctx->clk_mgr = dc->clk_mgr;
}
