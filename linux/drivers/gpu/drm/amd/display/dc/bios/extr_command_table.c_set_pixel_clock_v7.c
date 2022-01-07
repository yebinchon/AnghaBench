
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_7__ {scalar_t__ SET_GENLOCK_REF_DIV_SRC; scalar_t__ SET_XTALIN_REF_SRC; scalar_t__ SUPPORT_YUV_420; scalar_t__ PROGRAM_PHY_PLL_ONLY; scalar_t__ SET_EXTERNAL_REF_DIV_SRC; scalar_t__ FORCE_PROGRAMMING_OF_PLL; } ;
struct bp_pixel_clock_parameters {scalar_t__ signal_type; TYPE_2__ flags; int color_depth; int target_pixel_clock_100hz; int encoder_object_id; int controller_id; int pll_id; } ;
struct bios_parser {TYPE_1__* cmd_helper; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
typedef int clk ;
struct TYPE_8__ {int ucMiscInfo; void* ucDeepColorRatio; int ulPixelClock; void* ucEncoderMode; int ucTransmitterID; void* ucPpll; void* ucCRTC; } ;
struct TYPE_6__ {scalar_t__ (* transmitter_color_depth_to_atom ) (int ) ;scalar_t__ (* encoder_mode_bp_to_atom ) (scalar_t__,int) ;int (* encoder_id_to_atom ) (int ) ;scalar_t__ (* controller_id_to_atom ) (int ,void**) ;scalar_t__ (* clock_source_id_to_atom ) (int ,scalar_t__*) ;} ;
typedef TYPE_3__ PIXEL_CLOCK_PARAMETERS_V7 ;


 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;
 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,TYPE_3__) ;
 int PIXEL_CLOCK_V7_MISC_DVI_DUALLINK_EN ;
 int PIXEL_CLOCK_V7_MISC_FORCE_PROG_PPLL ;
 int PIXEL_CLOCK_V7_MISC_PROG_PHYPLL ;
 int PIXEL_CLOCK_V7_MISC_REF_DIV_SRC ;
 int PIXEL_CLOCK_V7_MISC_REF_DIV_SRC_GENLK ;
 int PIXEL_CLOCK_V7_MISC_REF_DIV_SRC_XTALIN ;
 int PIXEL_CLOCK_V7_MISC_YUV420_MODE ;
 scalar_t__ SIGNAL_TYPE_DVI_DUAL_LINK ;
 int SetPixelClock ;
 int cpu_to_le32 (int ) ;
 int dal_graphics_object_id_get_encoder_id (int ) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ stub1 (int ,scalar_t__*) ;
 scalar_t__ stub2 (int ,void**) ;
 int stub3 (int ) ;
 scalar_t__ stub4 (scalar_t__,int) ;
 scalar_t__ stub5 (int ) ;

__attribute__((used)) static enum bp_result set_pixel_clock_v7(
 struct bios_parser *bp,
 struct bp_pixel_clock_parameters *bp_params)
{
 enum bp_result result = BP_RESULT_FAILURE;
 PIXEL_CLOCK_PARAMETERS_V7 clk;
 uint8_t controller_id;
 uint32_t pll_id;

 memset(&clk, 0, sizeof(clk));

 if (bp->cmd_helper->clock_source_id_to_atom(bp_params->pll_id, &pll_id)
   && bp->cmd_helper->controller_id_to_atom(bp_params->controller_id, &controller_id)) {
  clk.ucCRTC = controller_id;
  clk.ucPpll = (uint8_t) pll_id;
  clk.ucTransmitterID = bp->cmd_helper->encoder_id_to_atom(dal_graphics_object_id_get_encoder_id(bp_params->encoder_object_id));
  clk.ucEncoderMode = (uint8_t) bp->cmd_helper->encoder_mode_bp_to_atom(bp_params->signal_type, 0);

  clk.ulPixelClock = cpu_to_le32(bp_params->target_pixel_clock_100hz);

  clk.ucDeepColorRatio = (uint8_t) bp->cmd_helper->transmitter_color_depth_to_atom(bp_params->color_depth);

  if (bp_params->flags.FORCE_PROGRAMMING_OF_PLL)
   clk.ucMiscInfo |= PIXEL_CLOCK_V7_MISC_FORCE_PROG_PPLL;

  if (bp_params->flags.SET_EXTERNAL_REF_DIV_SRC)
   clk.ucMiscInfo |= PIXEL_CLOCK_V7_MISC_REF_DIV_SRC;

  if (bp_params->flags.PROGRAM_PHY_PLL_ONLY)
   clk.ucMiscInfo |= PIXEL_CLOCK_V7_MISC_PROG_PHYPLL;

  if (bp_params->flags.SUPPORT_YUV_420)
   clk.ucMiscInfo |= PIXEL_CLOCK_V7_MISC_YUV420_MODE;

  if (bp_params->flags.SET_XTALIN_REF_SRC)
   clk.ucMiscInfo |= PIXEL_CLOCK_V7_MISC_REF_DIV_SRC_XTALIN;

  if (bp_params->flags.SET_GENLOCK_REF_DIV_SRC)
   clk.ucMiscInfo |= PIXEL_CLOCK_V7_MISC_REF_DIV_SRC_GENLK;

  if (bp_params->signal_type == SIGNAL_TYPE_DVI_DUAL_LINK)
   clk.ucMiscInfo |= PIXEL_CLOCK_V7_MISC_DVI_DUALLINK_EN;

  if (EXEC_BIOS_CMD_TABLE(SetPixelClock, clk))
   result = BP_RESULT_OK;
 }
 return result;
}
