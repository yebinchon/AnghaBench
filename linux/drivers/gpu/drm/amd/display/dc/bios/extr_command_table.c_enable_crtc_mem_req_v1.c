
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct bios_parser {TYPE_1__* cmd_helper; } ;
typedef enum controller_id { ____Placeholder_controller_id } controller_id ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_5__ {int ucEnable; int ucCRTC; int member_0; } ;
struct TYPE_4__ {scalar_t__ (* controller_id_to_atom ) (int,int *) ;} ;
typedef TYPE_2__ ENABLE_CRTC_PARAMETERS ;


 int ATOM_DISABLE ;
 int ATOM_ENABLE ;
 int BP_RESULT_BADINPUT ;
 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;
 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,TYPE_2__) ;
 int EnableCRTCMemReq ;
 scalar_t__ stub1 (int,int *) ;

__attribute__((used)) static enum bp_result enable_crtc_mem_req_v1(
 struct bios_parser *bp,
 enum controller_id controller_id,
 bool enable)
{
 bool result = BP_RESULT_BADINPUT;
 ENABLE_CRTC_PARAMETERS params = {0};
 uint8_t id;

 if (bp->cmd_helper->controller_id_to_atom(controller_id, &id)) {
  params.ucCRTC = id;

  if (enable)
   params.ucEnable = ATOM_ENABLE;
  else
   params.ucEnable = ATOM_DISABLE;

  if (EXEC_BIOS_CMD_TABLE(EnableCRTCMemReq, params))
   result = BP_RESULT_OK;
  else
   result = BP_RESULT_FAILURE;
 }

 return result;
}
