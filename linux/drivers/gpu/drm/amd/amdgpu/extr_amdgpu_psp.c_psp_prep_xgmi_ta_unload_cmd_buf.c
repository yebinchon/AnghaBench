
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int session_id; } ;
struct TYPE_4__ {TYPE_1__ cmd_unload_ta; } ;
struct psp_gfx_cmd_resp {TYPE_2__ cmd; int cmd_id; } ;


 int GFX_CMD_ID_UNLOAD_TA ;

__attribute__((used)) static void psp_prep_xgmi_ta_unload_cmd_buf(struct psp_gfx_cmd_resp *cmd,
         uint32_t xgmi_session_id)
{
 cmd->cmd_id = GFX_CMD_ID_UNLOAD_TA;
 cmd->cmd.cmd_unload_ta.session_id = xgmi_session_id;
}
