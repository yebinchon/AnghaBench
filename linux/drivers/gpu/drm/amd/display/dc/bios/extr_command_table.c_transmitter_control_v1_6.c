
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint8_t ;
struct command_table_helper {int (* dig_encoder_sel_to_atom ) (int ) ;int (* hpd_sel_to_atom ) (int ) ;int (* signal_type_to_atom_dig_mode ) (int ) ;int (* phy_id_to_atom ) (int ) ;} ;
struct TYPE_5__ {scalar_t__ id; } ;
struct bp_transmitter_control {scalar_t__ action; int pixel_clock; int color_depth; int signal; TYPE_1__ connector_obj_id; int engine_id; int hpd_sel; scalar_t__ lanes_number; scalar_t__ lane_settings; int transmitter; } ;
struct bios_parser {struct command_table_helper* cmd_helper; } ;
typedef int params ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_6__ {int ulSymClock; void* ucConnObjId; int ucDigEncoderSel; int ucHPDSel; void* ucLaneNum; int ucDigMode; void* ucDPLaneSet; void* ucAction; int ucPhyId; } ;
typedef TYPE_2__ DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6 ;


 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;



 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,TYPE_2__) ;

 scalar_t__ TRANSMITTER_CONTROL_SET_VOLTAGE_AND_PREEMPASIS ;
 int UNIPHYTransmitterControl ;
 void* cpu_to_le16 (int) ;
 int le16_to_cpu (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;
 int stub4 (int ) ;

__attribute__((used)) static enum bp_result transmitter_control_v1_6(
 struct bios_parser *bp,
 struct bp_transmitter_control *cntl)
{
 enum bp_result result = BP_RESULT_FAILURE;
 const struct command_table_helper *cmd = bp->cmd_helper;
 DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6 params;

 memset(&params, 0, sizeof(params));
 params.ucPhyId = cmd->phy_id_to_atom(cntl->transmitter);
 params.ucAction = (uint8_t)cntl->action;

 if (cntl->action == TRANSMITTER_CONTROL_SET_VOLTAGE_AND_PREEMPASIS)
  params.ucDPLaneSet = (uint8_t)cntl->lane_settings;
 else
  params.ucDigMode = cmd->signal_type_to_atom_dig_mode(cntl->signal);

 params.ucLaneNum = (uint8_t)cntl->lanes_number;
 params.ucHPDSel = cmd->hpd_sel_to_atom(cntl->hpd_sel);
 params.ucDigEncoderSel = cmd->dig_encoder_sel_to_atom(cntl->engine_id);
 params.ucConnObjId = (uint8_t)cntl->connector_obj_id.id;
 params.ulSymClock = cntl->pixel_clock/10;
 switch (cntl->signal) {
 case 128:
  switch (cntl->color_depth) {
  case 131:
   params.ulSymClock =
    cpu_to_le16((le16_to_cpu(params.ulSymClock) * 30) / 24);
   break;
  case 130:
   params.ulSymClock =
    cpu_to_le16((le16_to_cpu(params.ulSymClock) * 36) / 24);
   break;
  case 129:
   params.ulSymClock =
    cpu_to_le16((le16_to_cpu(params.ulSymClock) * 48) / 24);
   break;
  default:
   break;
  }
  break;
  default:
   break;
 }

 if (EXEC_BIOS_CMD_TABLE(UNIPHYTransmitterControl, params))
  result = BP_RESULT_OK;
 return result;
}
