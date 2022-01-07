
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_3__ {void* reg_id; void* reg_value; } ;
struct TYPE_4__ {TYPE_1__ cmd_setup_reg_prog; } ;
struct psp_gfx_cmd_resp {TYPE_2__ cmd; int cmd_id; } ;


 int GFX_CMD_ID_PROG_REG ;

__attribute__((used)) static void psp_prep_reg_prog_cmd_buf(struct psp_gfx_cmd_resp *cmd,
  uint32_t id, uint32_t value)
{
 cmd->cmd_id = GFX_CMD_ID_PROG_REG;
 cmd->cmd.cmd_setup_reg_prog.reg_value = value;
 cmd->cmd.cmd_setup_reg_prog.reg_id = id;
}
