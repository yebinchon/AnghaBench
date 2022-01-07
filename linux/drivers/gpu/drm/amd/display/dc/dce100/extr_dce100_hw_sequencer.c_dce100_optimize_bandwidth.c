
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dc_state {int res_ctx; } ;
struct dc {TYPE_2__* clk_mgr; int res_pool; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* update_clocks ) (TYPE_2__*,struct dc_state*,int) ;} ;


 int dce110_set_safe_displaymarks (int *,int ) ;
 int stub1 (TYPE_2__*,struct dc_state*,int) ;

void dce100_optimize_bandwidth(
  struct dc *dc,
  struct dc_state *context)
{
 dce110_set_safe_displaymarks(&context->res_ctx, dc->res_pool);

 dc->clk_mgr->funcs->update_clocks(
   dc->clk_mgr,
   context,
   1);
}
