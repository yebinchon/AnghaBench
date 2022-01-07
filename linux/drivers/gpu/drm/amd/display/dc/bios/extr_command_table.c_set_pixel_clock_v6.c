
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_10__ {scalar_t__ SET_EXTERNAL_REF_DIV_SRC; scalar_t__ FORCE_PROGRAMMING_OF_PLL; } ;
struct bp_pixel_clock_parameters {int fractional_feedback_divider; int target_pixel_clock_100hz; TYPE_3__ flags; int signal_type; int encoder_object_id; scalar_t__ pixel_clock_post_divider; scalar_t__ feedback_divider; scalar_t__ reference_divider; int controller_id; int pll_id; } ;
struct bios_parser {TYPE_1__* cmd_helper; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
typedef int clk ;
struct TYPE_9__ {void* ulPixelClock; void* ucCRTC; } ;
struct TYPE_11__ {int ucMiscInfo; TYPE_2__ ulCrtcPclkFreq; void* ucEncoderMode; int ucTransmitterID; void* ucPostDiv; void* ulFbDivDecFrac; int usFbDiv; void* ucRefDiv; void* ucPpll; } ;
struct TYPE_12__ {TYPE_4__ sPCLKInput; } ;
struct TYPE_8__ {scalar_t__ (* encoder_mode_bp_to_atom ) (int ,int) ;int (* encoder_id_to_atom ) (int ) ;scalar_t__ (* controller_id_to_atom ) (int ,void**) ;scalar_t__ (* clock_source_id_to_atom ) (int ,scalar_t__*) ;} ;
typedef TYPE_5__ SET_PIXEL_CLOCK_PS_ALLOCATION_V6 ;


 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;
 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,TYPE_5__) ;
 int PIXEL_CLOCK_V6_MISC_FORCE_PROG_PPLL ;
 int PIXEL_CLOCK_V6_MISC_REF_DIV_SRC ;
 int SetPixelClock ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int) ;
 int dal_graphics_object_id_get_encoder_id (int ) ;
 int memset (TYPE_5__*,int ,int) ;
 scalar_t__ stub1 (int ,scalar_t__*) ;
 scalar_t__ stub2 (int ,void**) ;
 int stub3 (int ) ;
 scalar_t__ stub4 (int ,int) ;

__attribute__((used)) static enum bp_result set_pixel_clock_v6(
 struct bios_parser *bp,
 struct bp_pixel_clock_parameters *bp_params)
{
 enum bp_result result = BP_RESULT_FAILURE;
 SET_PIXEL_CLOCK_PS_ALLOCATION_V6 clk;
 uint8_t controller_id;
 uint32_t pll_id;

 memset(&clk, 0, sizeof(clk));

 if (bp->cmd_helper->clock_source_id_to_atom(bp_params->pll_id, &pll_id)
   && bp->cmd_helper->controller_id_to_atom(
     bp_params->controller_id, &controller_id)) {
  clk.sPCLKInput.ulCrtcPclkFreq.ucCRTC = controller_id;
  clk.sPCLKInput.ucPpll = (uint8_t) pll_id;
  clk.sPCLKInput.ucRefDiv =
    (uint8_t) bp_params->reference_divider;
  clk.sPCLKInput.usFbDiv =
    cpu_to_le16((uint16_t) bp_params->feedback_divider);
  clk.sPCLKInput.ulFbDivDecFrac =
    cpu_to_le32(bp_params->fractional_feedback_divider);
  clk.sPCLKInput.ucPostDiv =
    (uint8_t) bp_params->pixel_clock_post_divider;
  clk.sPCLKInput.ucTransmitterID =
    bp->cmd_helper->encoder_id_to_atom(
      dal_graphics_object_id_get_encoder_id(
        bp_params->encoder_object_id));
  clk.sPCLKInput.ucEncoderMode =
    (uint8_t) bp->cmd_helper->encoder_mode_bp_to_atom(
      bp_params->signal_type, 0);


  clk.sPCLKInput.ulCrtcPclkFreq.ulPixelClock =
    cpu_to_le32(bp_params->target_pixel_clock_100hz / 100);

  if (bp_params->flags.FORCE_PROGRAMMING_OF_PLL) {
   clk.sPCLKInput.ucMiscInfo |=
     PIXEL_CLOCK_V6_MISC_FORCE_PROG_PPLL;
  }

  if (bp_params->flags.SET_EXTERNAL_REF_DIV_SRC) {
   clk.sPCLKInput.ucMiscInfo |=
     PIXEL_CLOCK_V6_MISC_REF_DIV_SRC;
  }







  if (EXEC_BIOS_CMD_TABLE(SetPixelClock, clk))
   result = BP_RESULT_OK;
 }

 return result;
}
