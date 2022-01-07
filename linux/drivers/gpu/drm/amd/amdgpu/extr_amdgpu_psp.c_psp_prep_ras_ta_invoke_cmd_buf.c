
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_3__ {void* ta_cmd_id; void* session_id; } ;
struct TYPE_4__ {TYPE_1__ cmd_invoke_cmd; } ;
struct psp_gfx_cmd_resp {TYPE_2__ cmd; int cmd_id; } ;


 int GFX_CMD_ID_INVOKE_CMD ;

__attribute__((used)) static void psp_prep_ras_ta_invoke_cmd_buf(struct psp_gfx_cmd_resp *cmd,
  uint32_t ta_cmd_id,
  uint32_t ras_session_id)
{
 cmd->cmd_id = GFX_CMD_ID_INVOKE_CMD;
 cmd->cmd.cmd_invoke_cmd.session_id = ras_session_id;
 cmd->cmd.cmd_invoke_cmd.ta_cmd_id = ta_cmd_id;

}
