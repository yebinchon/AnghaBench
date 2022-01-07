
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
typedef int uint16_t ;
struct TYPE_10__ {scalar_t__ USE_E_CLOCK_AS_SOURCE_FOR_D_CLOCK; scalar_t__ FORCE_PROGRAMMING_OF_PLL; } ;
struct bp_pixel_clock_parameters {scalar_t__ pll_id; int target_pixel_clock_100hz; scalar_t__ controller_id; TYPE_3__ flags; int signal_type; int encoder_object_id; scalar_t__ pixel_clock_post_divider; scalar_t__ fractional_feedback_divider; scalar_t__ feedback_divider; scalar_t__ reference_divider; } ;
struct bios_parser {TYPE_2__* cmd_helper; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
typedef int allocation ;
struct TYPE_12__ {int ucMiscInfo; void* ucEncoderMode; int ucTransmitterId; } ;
struct TYPE_8__ {void* usPixelClock; void* ucPostDiv; void* ucFracFbDiv; void* usFbDiv; void* usRefDiv; int ucPpll; } ;
struct TYPE_11__ {TYPE_1__ sPCLKInput; } ;
struct TYPE_9__ {scalar_t__ (* encoder_mode_bp_to_atom ) (int ,int) ;int (* encoder_id_to_atom ) (int ) ;} ;
typedef TYPE_4__ SET_PIXEL_CLOCK_PS_ALLOCATION ;
typedef TYPE_5__ PIXEL_CLOCK_PARAMETERS_V3 ;


 int ATOM_PPLL1 ;
 int ATOM_PPLL2 ;
 int BP_RESULT_BADINPUT ;
 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;
 scalar_t__ CLOCK_SOURCE_ID_PLL1 ;
 scalar_t__ CLOCK_SOURCE_ID_PLL2 ;
 scalar_t__ CONTROLLER_ID_D1 ;
 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,TYPE_4__) ;
 int PIXEL_CLOCK_MISC_CRTC_SEL_CRTC2 ;
 int PIXEL_CLOCK_MISC_FORCE_PROG_PPLL ;
 int PIXEL_CLOCK_MISC_USE_ENGINE_FOR_DISPCLK ;
 int SetPixelClock ;
 void* cpu_to_le16 (int ) ;
 int dal_graphics_object_id_get_encoder_id (int ) ;
 int memset (TYPE_4__*,int ,int) ;
 int stub1 (int ) ;
 scalar_t__ stub2 (int ,int) ;

__attribute__((used)) static enum bp_result set_pixel_clock_v3(
 struct bios_parser *bp,
 struct bp_pixel_clock_parameters *bp_params)
{
 enum bp_result result = BP_RESULT_FAILURE;
 PIXEL_CLOCK_PARAMETERS_V3 *params;
 SET_PIXEL_CLOCK_PS_ALLOCATION allocation;

 memset(&allocation, 0, sizeof(allocation));

 if (CLOCK_SOURCE_ID_PLL1 == bp_params->pll_id)
  allocation.sPCLKInput.ucPpll = ATOM_PPLL1;
 else if (CLOCK_SOURCE_ID_PLL2 == bp_params->pll_id)
  allocation.sPCLKInput.ucPpll = ATOM_PPLL2;
 else
  return BP_RESULT_BADINPUT;

 allocation.sPCLKInput.usRefDiv =
   cpu_to_le16((uint16_t)bp_params->reference_divider);
 allocation.sPCLKInput.usFbDiv =
   cpu_to_le16((uint16_t)bp_params->feedback_divider);
 allocation.sPCLKInput.ucFracFbDiv =
   (uint8_t)bp_params->fractional_feedback_divider;
 allocation.sPCLKInput.ucPostDiv =
   (uint8_t)bp_params->pixel_clock_post_divider;


 allocation.sPCLKInput.usPixelClock =
   cpu_to_le16((uint16_t)(bp_params->target_pixel_clock_100hz / 100));

 params = (PIXEL_CLOCK_PARAMETERS_V3 *)&allocation.sPCLKInput;
 params->ucTransmitterId =
   bp->cmd_helper->encoder_id_to_atom(
     dal_graphics_object_id_get_encoder_id(
       bp_params->encoder_object_id));
 params->ucEncoderMode =
   (uint8_t)(bp->cmd_helper->encoder_mode_bp_to_atom(
     bp_params->signal_type, 0));

 if (bp_params->flags.FORCE_PROGRAMMING_OF_PLL)
  params->ucMiscInfo |= PIXEL_CLOCK_MISC_FORCE_PROG_PPLL;

 if (bp_params->flags.USE_E_CLOCK_AS_SOURCE_FOR_D_CLOCK)
  params->ucMiscInfo |= PIXEL_CLOCK_MISC_USE_ENGINE_FOR_DISPCLK;

 if (CONTROLLER_ID_D1 != bp_params->controller_id)
  params->ucMiscInfo |= PIXEL_CLOCK_MISC_CRTC_SEL_CRTC2;

 if (EXEC_BIOS_CMD_TABLE(SetPixelClock, allocation))
  result = BP_RESULT_OK;

 return result;
}
