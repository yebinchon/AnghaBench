
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dce110_clk_src {TYPE_3__* bios; } ;
struct clock_source {int id; scalar_t__ dp_clk_src; } ;
struct TYPE_4__ {int FORCE_PROGRAMMING_OF_PLL; } ;
struct bp_pixel_clock_parameters {TYPE_1__ flags; int pll_id; int controller_id; int member_0; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_6__ {TYPE_2__* funcs; } ;
struct TYPE_5__ {int (* set_pixel_clock ) (TYPE_3__*,struct bp_pixel_clock_parameters*) ;} ;


 int BP_RESULT_OK ;
 int CONTROLLER_ID_UNDEFINED ;
 struct dce110_clk_src* TO_DCE110_CLK_SRC (struct clock_source*) ;
 int stub1 (TYPE_3__*,struct bp_pixel_clock_parameters*) ;

__attribute__((used)) static bool dce110_clock_source_power_down(
  struct clock_source *clk_src)
{
 struct dce110_clk_src *dce110_clk_src = TO_DCE110_CLK_SRC(clk_src);
 enum bp_result bp_result;
 struct bp_pixel_clock_parameters bp_pixel_clock_params = {0};

 if (clk_src->dp_clk_src)
  return 1;


 bp_pixel_clock_params.controller_id = CONTROLLER_ID_UNDEFINED;
 bp_pixel_clock_params.pll_id = clk_src->id;
 bp_pixel_clock_params.flags.FORCE_PROGRAMMING_OF_PLL = 1;


 bp_result = dce110_clk_src->bios->funcs->set_pixel_clock(
   dce110_clk_src->bios,
   &bp_pixel_clock_params);

 return bp_result == BP_RESULT_OK;
}
