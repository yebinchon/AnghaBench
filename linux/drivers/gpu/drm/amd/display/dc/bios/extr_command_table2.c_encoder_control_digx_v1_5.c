
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint8_t ;
struct dig_encoder_stream_setup_parameters_v1_5 {int pclk_10khz; int bitpercolor; void* lanenum; void* digmode; int action; void* digid; int member_0; } ;
struct bp_encoder_control {int pixel_clock; scalar_t__ signal; int color_depth; scalar_t__ lanes_number; int enable_dp_audio; int action; scalar_t__ engine_id; } ;
struct bios_parser {TYPE_1__* cmd_helper; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_2__ {scalar_t__ (* encoder_mode_bp_to_atom ) (scalar_t__,int ) ;int (* encoder_action_to_atom ) (int ) ;} ;


 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;




 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,struct dig_encoder_stream_setup_parameters_v1_5) ;
 int PANEL_10BIT_PER_COLOR ;
 int PANEL_12BIT_PER_COLOR ;
 int PANEL_16BIT_PER_COLOR ;
 int PANEL_8BIT_PER_COLOR ;
 scalar_t__ SIGNAL_TYPE_HDMI_TYPE_A ;
 int digxencodercontrol ;
 int stub1 (int ) ;
 scalar_t__ stub2 (scalar_t__,int ) ;

__attribute__((used)) static enum bp_result encoder_control_digx_v1_5(
 struct bios_parser *bp,
 struct bp_encoder_control *cntl)
{
 enum bp_result result = BP_RESULT_FAILURE;
 struct dig_encoder_stream_setup_parameters_v1_5 params = {0};

 params.digid = (uint8_t)(cntl->engine_id);
 params.action = bp->cmd_helper->encoder_action_to_atom(cntl->action);

 params.pclk_10khz = cntl->pixel_clock / 10;
 params.digmode =
   (uint8_t)(bp->cmd_helper->encoder_mode_bp_to_atom(
     cntl->signal,
     cntl->enable_dp_audio));
 params.lanenum = (uint8_t)(cntl->lanes_number);

 switch (cntl->color_depth) {
 case 128:
  params.bitpercolor = PANEL_8BIT_PER_COLOR;
  break;
 case 131:
  params.bitpercolor = PANEL_10BIT_PER_COLOR;
  break;
 case 130:
  params.bitpercolor = PANEL_12BIT_PER_COLOR;
  break;
 case 129:
  params.bitpercolor = PANEL_16BIT_PER_COLOR;
  break;
 default:
  break;
 }

 if (cntl->signal == SIGNAL_TYPE_HDMI_TYPE_A)
  switch (cntl->color_depth) {
  case 131:
   params.pclk_10khz =
    (params.pclk_10khz * 30) / 24;
   break;
  case 130:
   params.pclk_10khz =
    (params.pclk_10khz * 36) / 24;
   break;
  case 129:
   params.pclk_10khz =
    (params.pclk_10khz * 48) / 24;
   break;
  default:
   break;
  }

 if (EXEC_BIOS_CMD_TABLE(digxencodercontrol, params))
  result = BP_RESULT_OK;

 return result;
}
