
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct bp_adjust_pixel_clock_parameters {int pixel_clock; scalar_t__ signal_type; int ss_enable; int pixel_clock_post_divider; int reference_divider; int adjusted_pixel_clock; int encoder_object_id; } ;
struct bios_parser {TYPE_1__* cmd_helper; } ;
typedef int params ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_9__ {int ucPostDiv; int ucRefDiv; int ulDispPllFreq; } ;
struct TYPE_8__ {int ucDispPllConfig; scalar_t__ ucEncodeMode; int ucTransmitterID; int usPixelClock; } ;
struct TYPE_10__ {TYPE_3__ sOutput; TYPE_2__ sInput; } ;
struct TYPE_7__ {scalar_t__ (* encoder_mode_bp_to_atom ) (scalar_t__,int) ;int (* encoder_id_to_atom ) (int ) ;} ;
typedef TYPE_4__ ADJUST_DISPLAY_PLL_PS_ALLOCATION_V3 ;


 int AdjustDisplayPll ;
 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;
 int BREAK_TO_DEBUGGER () ;
 int DISPPLL_CONFIG_DUAL_LINK ;
 int DISPPLL_CONFIG_SS_ENABLE ;
 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,TYPE_4__) ;
 scalar_t__ SIGNAL_TYPE_DVI_DUAL_LINK ;
 int cpu_to_le16 (int ) ;
 int dal_graphics_object_id_get_encoder_id (int ) ;
 int div_u64 (int,int) ;
 int le32_to_cpu (int ) ;
 int memset (TYPE_4__*,int ,int) ;
 int stub1 (int ) ;
 scalar_t__ stub2 (scalar_t__,int) ;

__attribute__((used)) static enum bp_result adjust_display_pll_v3(
 struct bios_parser *bp,
 struct bp_adjust_pixel_clock_parameters *bp_params)
{
 enum bp_result result = BP_RESULT_FAILURE;
 ADJUST_DISPLAY_PLL_PS_ALLOCATION_V3 params;
 uint32_t pixel_clk_10_kHz_in = bp_params->pixel_clock / 10;

 memset(&params, 0, sizeof(params));



 params.sInput.usPixelClock = cpu_to_le16((uint16_t)pixel_clk_10_kHz_in);
 params.sInput.ucTransmitterID =
   bp->cmd_helper->encoder_id_to_atom(
     dal_graphics_object_id_get_encoder_id(
       bp_params->encoder_object_id));
 params.sInput.ucEncodeMode =
   (uint8_t)bp->cmd_helper->encoder_mode_bp_to_atom(
     bp_params->signal_type, 0);

 if (bp_params->ss_enable == 1)
  params.sInput.ucDispPllConfig |= DISPPLL_CONFIG_SS_ENABLE;

 if (bp_params->signal_type == SIGNAL_TYPE_DVI_DUAL_LINK)
  params.sInput.ucDispPllConfig |= DISPPLL_CONFIG_DUAL_LINK;

 if (EXEC_BIOS_CMD_TABLE(AdjustDisplayPll, params)) {



  uint64_t pixel_clk_10_khz_out =
    (uint64_t)le32_to_cpu(params.sOutput.ulDispPllFreq);
  uint64_t pixel_clk = (uint64_t)bp_params->pixel_clock;

  if (pixel_clk_10_kHz_in != 0) {
   bp_params->adjusted_pixel_clock =
     div_u64(pixel_clk * pixel_clk_10_khz_out,
       pixel_clk_10_kHz_in);
  } else {
   bp_params->adjusted_pixel_clock = 0;
   BREAK_TO_DEBUGGER();
  }

  bp_params->reference_divider = params.sOutput.ucRefDiv;
  bp_params->pixel_clock_post_divider = params.sOutput.ucPostDiv;

  result = BP_RESULT_OK;
 }

 return result;
}
