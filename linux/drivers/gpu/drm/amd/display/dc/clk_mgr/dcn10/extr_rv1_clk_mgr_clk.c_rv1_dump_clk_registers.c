
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_state_registers {int CLK0_CLK8_CURRENT_CNT; int CLK0_CLK8_DS_CNTL; int CLK0_CLK8_ALLOW_DS; int CLK0_CLK10_CURRENT_CNT; int CLK0_CLK11_CURRENT_CNT; } ;
struct clk_mgr_internal {int dummy; } ;
struct clk_mgr {int dummy; } ;
struct clk_bypass {int dcfclk_bypass; int dispclk_pypass; int dprefclk_bypass; } ;


 int CLK0_CLK10_BYPASS_CNTL ;
 int CLK0_CLK10_CURRENT_CNT ;
 int CLK0_CLK11_BYPASS_CNTL ;
 int CLK0_CLK11_CURRENT_CNT ;
 int CLK0_CLK8_ALLOW_DS ;
 int CLK0_CLK8_BYPASS_CNTL ;
 int CLK0_CLK8_CURRENT_CNT ;
 int CLK0_CLK8_DS_CNTL ;
 int REG_READ (int ) ;
 struct clk_mgr_internal* TO_CLK_MGR_INTERNAL (struct clk_mgr*) ;

void rv1_dump_clk_registers(struct clk_state_registers *regs, struct clk_bypass *bypass, struct clk_mgr *clk_mgr_base)
{
 struct clk_mgr_internal *clk_mgr = TO_CLK_MGR_INTERNAL(clk_mgr_base);

  regs->CLK0_CLK8_CURRENT_CNT = REG_READ(CLK0_CLK8_CURRENT_CNT) / 10;

  bypass->dcfclk_bypass = REG_READ(CLK0_CLK8_BYPASS_CNTL) & 0x0007;
  if (bypass->dcfclk_bypass < 0 || bypass->dcfclk_bypass > 4)
   bypass->dcfclk_bypass = 0;


  regs->CLK0_CLK8_DS_CNTL = REG_READ(CLK0_CLK8_DS_CNTL) / 10;

  regs->CLK0_CLK8_ALLOW_DS = REG_READ(CLK0_CLK8_ALLOW_DS);

  regs->CLK0_CLK10_CURRENT_CNT = REG_READ(CLK0_CLK10_CURRENT_CNT) / 10;

  bypass->dispclk_pypass = REG_READ(CLK0_CLK10_BYPASS_CNTL) & 0x0007;
  if (bypass->dispclk_pypass < 0 || bypass->dispclk_pypass > 4)
   bypass->dispclk_pypass = 0;

  regs->CLK0_CLK11_CURRENT_CNT = REG_READ(CLK0_CLK11_CURRENT_CNT) / 10;

  bypass->dprefclk_bypass = REG_READ(CLK0_CLK11_BYPASS_CNTL) & 0x0007;
  if (bypass->dprefclk_bypass < 0 || bypass->dprefclk_bypass > 4)
   bypass->dprefclk_bypass = 0;

}
