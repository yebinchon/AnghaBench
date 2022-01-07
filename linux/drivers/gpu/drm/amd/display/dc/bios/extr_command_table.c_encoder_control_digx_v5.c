
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint8_t ;
struct bp_encoder_control {int pixel_clock; scalar_t__ signal; int color_depth; scalar_t__ lanes_number; int enable_dp_audio; int action; scalar_t__ engine_id; } ;
struct bios_parser {TYPE_1__* cmd_helper; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_5__ {int ulPixelClock; int ucBitPerColor; void* ucLaneNum; void* ucDigMode; int ucAction; void* ucDigId; int member_0; } ;
struct TYPE_4__ {scalar_t__ (* encoder_mode_bp_to_atom ) (scalar_t__,int ) ;int (* encoder_action_to_atom ) (int ) ;} ;
typedef TYPE_2__ ENCODER_STREAM_SETUP_PARAMETERS_V5 ;


 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;




 int DIGxEncoderControl ;
 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,TYPE_2__) ;
 int PANEL_10BIT_PER_COLOR ;
 int PANEL_12BIT_PER_COLOR ;
 int PANEL_16BIT_PER_COLOR ;
 int PANEL_8BIT_PER_COLOR ;
 scalar_t__ SIGNAL_TYPE_HDMI_TYPE_A ;
 int stub1 (int ) ;
 scalar_t__ stub2 (scalar_t__,int ) ;

__attribute__((used)) static enum bp_result encoder_control_digx_v5(
 struct bios_parser *bp,
 struct bp_encoder_control *cntl)
{
 enum bp_result result = BP_RESULT_FAILURE;
 ENCODER_STREAM_SETUP_PARAMETERS_V5 params = {0};

 params.ucDigId = (uint8_t)(cntl->engine_id);
 params.ucAction = bp->cmd_helper->encoder_action_to_atom(cntl->action);

 params.ulPixelClock = cntl->pixel_clock / 10;
 params.ucDigMode =
   (uint8_t)(bp->cmd_helper->encoder_mode_bp_to_atom(
     cntl->signal,
     cntl->enable_dp_audio));
 params.ucLaneNum = (uint8_t)(cntl->lanes_number);

 switch (cntl->color_depth) {
 case 128:
  params.ucBitPerColor = PANEL_8BIT_PER_COLOR;
  break;
 case 131:
  params.ucBitPerColor = PANEL_10BIT_PER_COLOR;
  break;
 case 130:
  params.ucBitPerColor = PANEL_12BIT_PER_COLOR;
  break;
 case 129:
  params.ucBitPerColor = PANEL_16BIT_PER_COLOR;
  break;
 default:
  break;
 }

 if (cntl->signal == SIGNAL_TYPE_HDMI_TYPE_A)
  switch (cntl->color_depth) {
  case 131:
   params.ulPixelClock =
    (params.ulPixelClock * 30) / 24;
   break;
  case 130:
   params.ulPixelClock =
    (params.ulPixelClock * 36) / 24;
   break;
  case 129:
   params.ulPixelClock =
    (params.ulPixelClock * 48) / 24;
   break;
  default:
   break;
  }

 if (EXEC_BIOS_CMD_TABLE(DIGxEncoderControl, params))
  result = BP_RESULT_OK;

 return result;
}
