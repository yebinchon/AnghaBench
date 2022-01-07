
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc_state {int res_ctx; } ;
struct dc {int res_pool; struct clk_mgr* clk_mgr; } ;
struct clk_mgr {TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* update_clocks ) (struct clk_mgr*,struct dc_state*,int) ;} ;


 int dce110_set_safe_displaymarks (int *,int ) ;
 int stub1 (struct clk_mgr*,struct dc_state*,int) ;

void dce110_prepare_bandwidth(
  struct dc *dc,
  struct dc_state *context)
{
 struct clk_mgr *dccg = dc->clk_mgr;

 dce110_set_safe_displaymarks(&context->res_ctx, dc->res_pool);

 dccg->funcs->update_clocks(
   dccg,
   context,
   0);
}
