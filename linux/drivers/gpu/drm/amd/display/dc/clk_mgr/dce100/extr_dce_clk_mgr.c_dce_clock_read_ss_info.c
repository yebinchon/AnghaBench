
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ CENTER_MODE; } ;
struct TYPE_8__ {int member_0; } ;
struct spread_spectrum_info {scalar_t__ spread_spectrum_percentage; TYPE_5__ type; int spread_percentage_divider; TYPE_3__ member_0; } ;
struct dc_bios {TYPE_4__* funcs; } ;
struct TYPE_7__ {TYPE_1__* ctx; } ;
struct clk_mgr_internal {int ss_on_dprefclk; scalar_t__ dprefclk_ss_percentage; int dprefclk_ss_divider; TYPE_2__ base; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_9__ {int (* get_ss_entry_number ) (struct dc_bios*,int ) ;int (* get_spread_spectrum_info ) (struct dc_bios*,int ,int ,struct spread_spectrum_info*) ;} ;
struct TYPE_6__ {struct dc_bios* dc_bios; } ;


 int AS_SIGNAL_TYPE_DISPLAY_PORT ;
 int AS_SIGNAL_TYPE_GPU_PLL ;
 int BP_RESULT_OK ;
 int stub1 (struct dc_bios*,int ) ;
 int stub2 (struct dc_bios*,int ,int ,struct spread_spectrum_info*) ;
 int stub3 (struct dc_bios*,int ,int ,struct spread_spectrum_info*) ;

void dce_clock_read_ss_info(struct clk_mgr_internal *clk_mgr_dce)
{
 struct dc_bios *bp = clk_mgr_dce->base.ctx->dc_bios;
 int ss_info_num = bp->funcs->get_ss_entry_number(
   bp, AS_SIGNAL_TYPE_GPU_PLL);

 if (ss_info_num) {
  struct spread_spectrum_info info = { { 0 } };
  enum bp_result result = bp->funcs->get_spread_spectrum_info(
    bp, AS_SIGNAL_TYPE_GPU_PLL, 0, &info);






  if (result == BP_RESULT_OK &&
    info.spread_spectrum_percentage != 0) {
   clk_mgr_dce->ss_on_dprefclk = 1;
   clk_mgr_dce->dprefclk_ss_divider = info.spread_percentage_divider;

   if (info.type.CENTER_MODE == 0) {



    clk_mgr_dce->dprefclk_ss_percentage =
      info.spread_spectrum_percentage;
   }

   return;
  }

  result = bp->funcs->get_spread_spectrum_info(
    bp, AS_SIGNAL_TYPE_DISPLAY_PORT, 0, &info);






  if (result == BP_RESULT_OK &&
    info.spread_spectrum_percentage != 0) {
   clk_mgr_dce->ss_on_dprefclk = 1;
   clk_mgr_dce->dprefclk_ss_divider = info.spread_percentage_divider;

   if (info.type.CENTER_MODE == 0) {



    clk_mgr_dce->dprefclk_ss_percentage =
      info.spread_spectrum_percentage;
   }
  }
 }
}
