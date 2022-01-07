
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc_state {int dummy; } ;
struct dc {struct clk_mgr* clk_mgr; } ;
struct clk_mgr {TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* update_clocks ) (struct clk_mgr*,struct dc_state*,int) ;} ;


 int dce110_set_displaymarks (struct dc*,struct dc_state*) ;
 int stub1 (struct clk_mgr*,struct dc_state*,int) ;

void dce110_optimize_bandwidth(
  struct dc *dc,
  struct dc_state *context)
{
 struct clk_mgr *dccg = dc->clk_mgr;

 dce110_set_displaymarks(dc, context);

 dccg->funcs->update_clocks(
   dccg,
   context,
   1);
}
