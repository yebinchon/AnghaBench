
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {int buf_size; int buf_phy_addr_hi; int buf_phy_addr_lo; } ;
struct TYPE_3__ {TYPE_2__ cmd_setup_tmr; } ;
struct psp_gfx_cmd_resp {TYPE_1__ cmd; int cmd_id; } ;
struct psp_context {int dummy; } ;


 int GFX_CMD_ID_SETUP_TMR ;
 int GFX_CMD_ID_SETUP_VMR ;
 int lower_32_bits (int ) ;
 scalar_t__ psp_support_vmr_ring (struct psp_context*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void psp_prep_tmr_cmd_buf(struct psp_context *psp,
     struct psp_gfx_cmd_resp *cmd,
     uint64_t tmr_mc, uint32_t size)
{
 if (psp_support_vmr_ring(psp))
  cmd->cmd_id = GFX_CMD_ID_SETUP_VMR;
 else
  cmd->cmd_id = GFX_CMD_ID_SETUP_TMR;
 cmd->cmd.cmd_setup_tmr.buf_phy_addr_lo = lower_32_bits(tmr_mc);
 cmd->cmd.cmd_setup_tmr.buf_phy_addr_hi = upper_32_bits(tmr_mc);
 cmd->cmd.cmd_setup_tmr.buf_size = size;
}
