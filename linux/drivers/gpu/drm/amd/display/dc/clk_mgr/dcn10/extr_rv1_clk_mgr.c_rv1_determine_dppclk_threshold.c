
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dc_clocks {int dispclk_khz; int dppclk_khz; int max_supported_dppclk_khz; } ;
struct TYPE_3__ {int dispclk_khz; int dppclk_khz; } ;
struct TYPE_4__ {TYPE_1__ clks; } ;
struct clk_mgr_internal {TYPE_2__ base; } ;



__attribute__((used)) static int rv1_determine_dppclk_threshold(struct clk_mgr_internal *clk_mgr, struct dc_clocks *new_clocks)
{
 bool request_dpp_div = new_clocks->dispclk_khz > new_clocks->dppclk_khz;
 bool dispclk_increase = new_clocks->dispclk_khz > clk_mgr->base.clks.dispclk_khz;
 int disp_clk_threshold = new_clocks->max_supported_dppclk_khz;
 bool cur_dpp_div = clk_mgr->base.clks.dispclk_khz > clk_mgr->base.clks.dppclk_khz;


 if (dispclk_increase) {

  if (cur_dpp_div)
   return new_clocks->dispclk_khz;




  if (new_clocks->dispclk_khz <= disp_clk_threshold)
   return new_clocks->dispclk_khz;


  if (!request_dpp_div)
   return new_clocks->dispclk_khz;

 } else {





  if (!cur_dpp_div)
   return new_clocks->dispclk_khz;




  if (clk_mgr->base.clks.dispclk_khz <= disp_clk_threshold)
   return new_clocks->dispclk_khz;


  if (request_dpp_div)
   return new_clocks->dispclk_khz;
 }

 return disp_clk_threshold;
}
