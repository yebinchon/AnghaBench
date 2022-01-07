
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint8_t ;
typedef void* uint16_t ;
struct TYPE_12__ {scalar_t__ id; } ;
struct bp_transmitter_control {int transmitter; int action; int pixel_clock; scalar_t__ engine_id; int coherent; int lanes_number; scalar_t__ lane_settings; scalar_t__ lane_select; TYPE_6__ connector_obj_id; } ;
struct bios_parser {TYPE_3__* cmd_helper; } ;
typedef int params ;
typedef enum connector_id { ____Placeholder_connector_id } connector_id ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_9__ {int fDualLinkConnector; int ucLinkSel; int ucEncoderSel; int fDPConnector; void* ucTransmitterSel; int fCoherentMode; } ;
struct TYPE_8__ {void* ucLaneSet; void* ucLaneSel; } ;
struct TYPE_11__ {void* ucAction; TYPE_2__ acConfig; void* usPixelClock; TYPE_1__ asMode; void* usInitInfo; } ;
struct TYPE_10__ {scalar_t__ (* transmitter_bp_to_atom ) (int const) ;} ;
typedef TYPE_4__ DIG_TRANSMITTER_CONTROL_PARAMETERS_V2 ;


 int BP_RESULT_BADINPUT ;
 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;
 int CONNECTOR_ID_DISPLAY_PORT ;
 int CONNECTOR_ID_DUAL_LINK_DVID ;
 int CONNECTOR_ID_DUAL_LINK_DVII ;
 scalar_t__ ENGINE_ID_DIGB ;
 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,TYPE_4__) ;
 int LANE_COUNT_FOUR ;
 int UNIPHYTransmitterControl ;
 void* cpu_to_le16 (void*) ;
 int dal_graphics_object_id_get_connector_id (TYPE_6__) ;
 int memset (TYPE_4__*,int ,int) ;
 scalar_t__ stub1 (int const) ;

__attribute__((used)) static enum bp_result transmitter_control_v2(
 struct bios_parser *bp,
 struct bp_transmitter_control *cntl)
{
 enum bp_result result = BP_RESULT_FAILURE;
 DIG_TRANSMITTER_CONTROL_PARAMETERS_V2 params;
 enum connector_id connector_id =
  dal_graphics_object_id_get_connector_id(cntl->connector_obj_id);

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

 switch (cntl->action) {
 case 136:
  if ((CONNECTOR_ID_DUAL_LINK_DVII == connector_id) ||
    (CONNECTOR_ID_DUAL_LINK_DVID == connector_id))






   params.acConfig.fDualLinkConnector = 1;


  params.usInitInfo =
    cpu_to_le16((uint8_t)cntl->connector_obj_id.id);
  break;
 case 135:

  params.asMode.ucLaneSel = (uint8_t)cntl->lane_select;
  params.asMode.ucLaneSet = (uint8_t)cntl->lane_settings;
  break;
 default:

  if (LANE_COUNT_FOUR < cntl->lanes_number) {






   params.acConfig.fDualLinkConnector = 1;




   params.usPixelClock =
     cpu_to_le16((uint16_t)(cntl->pixel_clock / 20));
  } else



   params.usPixelClock =
     cpu_to_le16((uint16_t)(cntl->pixel_clock / 10));
  break;
 }





 params.acConfig.fCoherentMode = cntl->coherent;

 if ((132 == cntl->transmitter)
   || (130 == cntl->transmitter)
   || (128 == cntl->transmitter))






  params.acConfig.ucLinkSel = 1;

 if (ENGINE_ID_DIGB == cntl->engine_id)





  params.acConfig.ucEncoderSel = 1;

 if (CONNECTOR_ID_DISPLAY_PORT == connector_id)




  params.acConfig.fDPConnector = 1;







 params.acConfig.ucTransmitterSel =
   (uint8_t)bp->cmd_helper->transmitter_bp_to_atom(
     cntl->transmitter);

 params.ucAction = (uint8_t)cntl->action;

 if (EXEC_BIOS_CMD_TABLE(UNIPHYTransmitterControl, params))
  result = BP_RESULT_OK;

 return result;
}
