
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint16_t ;
struct command_table_helper {int (* dig_encoder_sel_to_atom ) (int ) ;int (* hpd_sel_to_atom ) (int ) ;int (* clock_source_id_to_atom_phy_clk_src_id ) (int ) ;int (* signal_type_to_atom_dig_mode ) (int ) ;int (* phy_id_to_atom ) (int ) ;} ;
struct TYPE_6__ {scalar_t__ id; } ;
struct bp_transmitter_control {int pixel_clock; int color_depth; int signal; scalar_t__ lane_settings; int engine_id; int hpd_sel; int coherent; int pll_id; TYPE_1__ connector_obj_id; scalar_t__ lanes_number; scalar_t__ action; int transmitter; } ;
struct bios_parser {struct command_table_helper* cmd_helper; } ;
typedef int params ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_7__ {int ucHPDSel; int ucCoherentMode; int ucPhyClkSrcId; } ;
struct TYPE_8__ {void* usSymClock; void* ucDPLaneSet; int ucDigEncoderSel; TYPE_2__ asConfig; int ucDigMode; void* ucConnObjId; void* ucLaneNum; void* ucAction; int ucPhyId; } ;
typedef TYPE_3__ DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5 ;


 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;



 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,TYPE_3__) ;
 int SIGNAL_TYPE_HDMI_TYPE_A ;
 int UNIPHYTransmitterControl ;
 void* cpu_to_le16 (int) ;
 int le16_to_cpu (void*) ;
 int memset (TYPE_3__*,int ,int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;
 int stub4 (int ) ;
 int stub5 (int ) ;

__attribute__((used)) static enum bp_result transmitter_control_v1_5(
 struct bios_parser *bp,
 struct bp_transmitter_control *cntl)
{
 enum bp_result result = BP_RESULT_FAILURE;
 const struct command_table_helper *cmd = bp->cmd_helper;
 DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5 params;

 memset(&params, 0, sizeof(params));
 params.ucPhyId = cmd->phy_id_to_atom(cntl->transmitter);
 params.ucAction = (uint8_t)cntl->action;
 params.ucLaneNum = (uint8_t)cntl->lanes_number;
 params.ucConnObjId = (uint8_t)cntl->connector_obj_id.id;

 params.ucDigMode =
  cmd->signal_type_to_atom_dig_mode(cntl->signal);
 params.asConfig.ucPhyClkSrcId =
  cmd->clock_source_id_to_atom_phy_clk_src_id(cntl->pll_id);

 params.asConfig.ucCoherentMode = cntl->coherent;
 params.asConfig.ucHPDSel =
  cmd->hpd_sel_to_atom(cntl->hpd_sel);
 params.ucDigEncoderSel =
  cmd->dig_encoder_sel_to_atom(cntl->engine_id);
 params.ucDPLaneSet = (uint8_t) cntl->lane_settings;
 params.usSymClock = cpu_to_le16((uint16_t) (cntl->pixel_clock / 10));
 if (cntl->signal == SIGNAL_TYPE_HDMI_TYPE_A) {
  switch (cntl->color_depth) {
  case 130:
   params.usSymClock =
    cpu_to_le16((le16_to_cpu(params.usSymClock) * 30) / 24);
   break;
  case 129:
   params.usSymClock =
    cpu_to_le16((le16_to_cpu(params.usSymClock) * 36) / 24);
   break;
  case 128:
   params.usSymClock =
    cpu_to_le16((le16_to_cpu(params.usSymClock) * 48) / 24);
   break;
  default:
   break;
  }
 }

 if (EXEC_BIOS_CMD_TABLE(UNIPHYTransmitterControl, params))
  result = BP_RESULT_OK;

 return result;
}
