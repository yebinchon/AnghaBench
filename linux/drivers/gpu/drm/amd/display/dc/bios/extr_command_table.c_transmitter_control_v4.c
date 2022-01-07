
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint8_t ;
typedef scalar_t__ uint32_t ;
typedef void* uint16_t ;
struct command_table_helper {scalar_t__ (* transmitter_bp_to_atom ) (int const) ;int (* clock_source_id_to_ref_clk_src ) (int ,scalar_t__*) ;} ;
struct TYPE_10__ {scalar_t__ id; } ;
struct bp_transmitter_control {int const transmitter; int action; int pixel_clock; scalar_t__ engine_id; scalar_t__ lanes_number; int coherent; scalar_t__ lane_settings; scalar_t__ lane_select; TYPE_5__ connector_obj_id; int pll_id; } ;
struct bios_parser {struct command_table_helper* cmd_helper; } ;
typedef int params ;
typedef enum connector_id { ____Placeholder_connector_id } connector_id ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_8__ {int fDualLinkConnector; int ucLinkSel; int ucEncoderSel; void* ucRefClkSource; void* ucTransmitterSel; int fCoherentMode; } ;
struct TYPE_7__ {void* ucLaneSet; void* ucLaneSel; } ;
struct TYPE_9__ {void* ucAction; TYPE_2__ acConfig; void* ucLaneNum; void* usPixelClock; TYPE_1__ asMode; void* usInitInfo; } ;
typedef TYPE_3__ DIG_TRANSMITTER_CONTROL_PARAMETERS_V4 ;


 int BP_RESULT_BADINPUT ;
 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;
 int CONNECTOR_ID_DUAL_LINK_DVID ;
 int CONNECTOR_ID_DUAL_LINK_DVII ;
 scalar_t__ ENGINE_ID_DIGB ;
 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,TYPE_3__) ;
 scalar_t__ LANE_COUNT_FOUR ;
 int UNIPHYTransmitterControl ;
 void* cpu_to_le16 (void*) ;
 int dal_graphics_object_id_get_connector_id (TYPE_5__) ;
 int memset (TYPE_3__*,int ,int) ;
 int stub1 (int ,scalar_t__*) ;
 scalar_t__ stub2 (int const) ;

__attribute__((used)) static enum bp_result transmitter_control_v4(
 struct bios_parser *bp,
 struct bp_transmitter_control *cntl)
{
 enum bp_result result = BP_RESULT_FAILURE;
 DIG_TRANSMITTER_CONTROL_PARAMETERS_V4 params;
 uint32_t ref_clk_src_id;
 enum connector_id conn_id =
   dal_graphics_object_id_get_connector_id(cntl->connector_obj_id);
 const struct command_table_helper *cmd = bp->cmd_helper;

 memset(&params, 0, sizeof(params));

 switch (cntl->transmitter) {
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
 case 134:
  break;
 default:
  return BP_RESULT_BADINPUT;
 }

 if (!cmd->clock_source_id_to_ref_clk_src(cntl->pll_id, &ref_clk_src_id))
  return BP_RESULT_BADINPUT;

 switch (cntl->action) {
 case 136:
 {
  if ((CONNECTOR_ID_DUAL_LINK_DVII == conn_id) ||
    (CONNECTOR_ID_DUAL_LINK_DVID == conn_id))






   params.acConfig.fDualLinkConnector = 1;


  params.usInitInfo =
    cpu_to_le16((uint8_t)(cntl->connector_obj_id.id));
 }
 break;
 case 135:

  params.asMode.ucLaneSel = (uint8_t)(cntl->lane_select);
  params.asMode.ucLaneSet = (uint8_t)(cntl->lane_settings);
  break;
 default:
  if ((CONNECTOR_ID_DUAL_LINK_DVII == conn_id) ||
    (CONNECTOR_ID_DUAL_LINK_DVID == conn_id))






   params.acConfig.fDualLinkConnector = 1;


  if (LANE_COUNT_FOUR < cntl->lanes_number)



   params.usPixelClock =
     cpu_to_le16((uint16_t)(cntl->pixel_clock / 20));
  else {



   params.usPixelClock =
     cpu_to_le16((uint16_t)(cntl->pixel_clock / 10));
  }
  break;
 }





 params.acConfig.fCoherentMode = cntl->coherent;

 if ((132 == cntl->transmitter)
  || (130 == cntl->transmitter)
  || (128 == cntl->transmitter))






  params.acConfig.ucLinkSel = 1;

 if (ENGINE_ID_DIGB == cntl->engine_id)





  params.acConfig.ucEncoderSel = 1;







 params.acConfig.ucTransmitterSel =
  (uint8_t)(cmd->transmitter_bp_to_atom(cntl->transmitter));
 params.ucLaneNum = (uint8_t)(cntl->lanes_number);
 params.acConfig.ucRefClkSource = (uint8_t)(ref_clk_src_id);
 params.ucAction = (uint8_t)(cntl->action);

 if (EXEC_BIOS_CMD_TABLE(UNIPHYTransmitterControl, params))
  result = BP_RESULT_OK;

 return result;
}
