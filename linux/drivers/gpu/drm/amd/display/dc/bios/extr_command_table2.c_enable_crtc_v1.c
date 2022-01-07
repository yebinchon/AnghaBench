
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct enable_crtc_parameters {int enable; int crtc_id; int member_0; } ;
struct bios_parser {TYPE_1__* cmd_helper; } ;
typedef enum controller_id { ____Placeholder_controller_id } controller_id ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_2__ {scalar_t__ (* controller_id_to_atom ) (int,int *) ;} ;


 int ATOM_DISABLE ;
 int ATOM_ENABLE ;
 int BP_RESULT_BADINPUT ;
 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;
 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,struct enable_crtc_parameters) ;
 int enablecrtc ;
 scalar_t__ stub1 (int,int *) ;

__attribute__((used)) static enum bp_result enable_crtc_v1(
 struct bios_parser *bp,
 enum controller_id controller_id,
 bool enable)
{
 bool result = BP_RESULT_FAILURE;
 struct enable_crtc_parameters params = {0};
 uint8_t id;

 if (bp->cmd_helper->controller_id_to_atom(controller_id, &id))
  params.crtc_id = id;
 else
  return BP_RESULT_BADINPUT;

 if (enable)
  params.enable = ATOM_ENABLE;
 else
  params.enable = ATOM_DISABLE;

 if (EXEC_BIOS_CMD_TABLE(enablecrtc, params))
  result = BP_RESULT_OK;

 return result;
}
