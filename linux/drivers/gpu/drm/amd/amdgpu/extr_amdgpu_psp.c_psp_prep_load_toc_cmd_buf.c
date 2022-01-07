
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int toc_size; int toc_phy_addr_hi; int toc_phy_addr_lo; } ;
struct TYPE_4__ {TYPE_1__ cmd_load_toc; } ;
struct psp_gfx_cmd_resp {TYPE_2__ cmd; int cmd_id; } ;


 int GFX_CMD_ID_LOAD_TOC ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void psp_prep_load_toc_cmd_buf(struct psp_gfx_cmd_resp *cmd,
          uint64_t pri_buf_mc, uint32_t size)
{
 cmd->cmd_id = GFX_CMD_ID_LOAD_TOC;
 cmd->cmd.cmd_load_toc.toc_phy_addr_lo = lower_32_bits(pri_buf_mc);
 cmd->cmd.cmd_load_toc.toc_phy_addr_hi = upper_32_bits(pri_buf_mc);
 cmd->cmd.cmd_load_toc.toc_size = size;
}
