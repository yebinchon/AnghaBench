
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef void* uint32_t ;
struct TYPE_3__ {void* cmd_buf_len; void* cmd_buf_phy_addr_hi; void* cmd_buf_phy_addr_lo; void* app_len; void* app_phy_addr_hi; void* app_phy_addr_lo; } ;
struct TYPE_4__ {TYPE_1__ cmd_load_ta; } ;
struct psp_gfx_cmd_resp {TYPE_2__ cmd; int cmd_id; } ;


 int GFX_CMD_ID_LOAD_ASD ;
 void* lower_32_bits (int ) ;
 void* upper_32_bits (int ) ;

__attribute__((used)) static void psp_prep_asd_cmd_buf(struct psp_gfx_cmd_resp *cmd,
     uint64_t asd_mc, uint64_t asd_mc_shared,
     uint32_t size, uint32_t shared_size)
{
 cmd->cmd_id = GFX_CMD_ID_LOAD_ASD;
 cmd->cmd.cmd_load_ta.app_phy_addr_lo = lower_32_bits(asd_mc);
 cmd->cmd.cmd_load_ta.app_phy_addr_hi = upper_32_bits(asd_mc);
 cmd->cmd.cmd_load_ta.app_len = size;

 cmd->cmd.cmd_load_ta.cmd_buf_phy_addr_lo = lower_32_bits(asd_mc_shared);
 cmd->cmd.cmd_load_ta.cmd_buf_phy_addr_hi = upper_32_bits(asd_mc_shared);
 cmd->cmd.cmd_load_ta.cmd_buf_len = shared_size;
}
