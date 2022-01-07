
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint16_t ;
struct graphics_object_id {int enum_id; } ;
struct TYPE_7__ {int id; } ;
struct bp_external_encoder_control {int action; int pixel_clock; scalar_t__ lanes_number; int signal; scalar_t__ color_depth; int link_rate; TYPE_1__ connector_obj_id; struct graphics_object_id encoder_id; } ;
struct bios_parser {TYPE_2__* cmd_helper; } ;
typedef int params ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_10__ {int ucConfig; void* ucAction; void* ucLaneNum; void* ucEncoderMode; void* usPixelClock; void* ucBitPerColor; void* usConnectorId; } ;
struct TYPE_9__ {TYPE_4__ sExtEncoder; } ;
struct TYPE_8__ {scalar_t__ (* encoder_mode_bp_to_atom ) (int ,int) ;} ;
typedef TYPE_3__ EXTERNAL_ENCODER_CONTROL_PS_ALLOCATION_V3 ;
typedef TYPE_4__ EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3 ;


 int BP_RESULT_BADINPUT ;
 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;
 int BREAK_TO_DEBUGGER () ;


 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,TYPE_3__) ;



 int ExternalEncoderControl ;
 int LINK_RATE_HIGH ;
 void* cpu_to_le16 (int ) ;
 int dal_graphics_object_id_get_encoder_id (struct graphics_object_id) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ stub1 (int ,int) ;
 scalar_t__ stub2 (int ,int) ;

__attribute__((used)) static enum bp_result external_encoder_control_v3(
 struct bios_parser *bp,
 struct bp_external_encoder_control *cntl)
{
 enum bp_result result = BP_RESULT_FAILURE;


 EXTERNAL_ENCODER_CONTROL_PS_ALLOCATION_V3 params;
 EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3 *cntl_params;
 struct graphics_object_id encoder;
 bool is_input_signal_dp = 0;

 memset(&params, 0, sizeof(params));

 cntl_params = &params.sExtEncoder;

 encoder = cntl->encoder_id;


 switch (dal_graphics_object_id_get_encoder_id(encoder)) {
 case 132:
 case 131:
  is_input_signal_dp = 1;
  break;

 default:
  BREAK_TO_DEBUGGER();
  return BP_RESULT_BADINPUT;
 }
 cntl_params->ucConfig = (uint8_t)((encoder.enum_id - 1) << 4);

 switch (cntl->action) {
 case 129:


  cntl_params->usConnectorId =
    cpu_to_le16((uint16_t)cntl->connector_obj_id.id);
  break;
 case 128:





  cntl_params->usPixelClock =
    cpu_to_le16((uint16_t)(cntl->pixel_clock / 10));


  cntl_params->ucEncoderMode =
    (uint8_t)bp->cmd_helper->encoder_mode_bp_to_atom(
      cntl->signal, 0);

  if (is_input_signal_dp) {


   if (LINK_RATE_HIGH == cntl->link_rate)
    cntl_params->ucConfig |= 1;



   cntl_params->ucBitPerColor =
     (uint8_t)(cntl->color_depth);
  }


  cntl_params->ucLaneNum = (uint8_t)(cntl->lanes_number);
  break;
 case 130:
  cntl_params->usPixelClock =
    cpu_to_le16((uint16_t)(cntl->pixel_clock / 10));
  cntl_params->ucEncoderMode =
    (uint8_t)bp->cmd_helper->encoder_mode_bp_to_atom(
      cntl->signal, 0);
  cntl_params->ucLaneNum = (uint8_t)cntl->lanes_number;
  break;
 default:
  break;
 }

 cntl_params->ucAction = (uint8_t)cntl->action;

 if (EXEC_BIOS_CMD_TABLE(ExternalEncoderControl, params))
  result = BP_RESULT_OK;

 return result;
}
