
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct socfpga_fpga_priv {int dummy; } ;
struct fpga_manager {struct socfpga_fpga_priv* priv; } ;


 int ETIMEDOUT ;
 int SOCFPGA_FPGMGR_CTL_EN ;
 scalar_t__ SOCFPGA_FPGMGR_CTL_NCFGPULL ;
 int SOCFPGA_FPGMGR_CTL_OFST ;
 int SOCFPGA_FPGMGR_STAT_RESET ;
 int socfpga_fpga_cfg_mode_set (struct socfpga_fpga_priv*) ;
 scalar_t__ socfpga_fpga_readl (struct socfpga_fpga_priv*,int ) ;
 int socfpga_fpga_set_bitsl (struct socfpga_fpga_priv*,int ,int ) ;
 scalar_t__ socfpga_fpga_wait_for_state (struct socfpga_fpga_priv*,int ) ;
 int socfpga_fpga_writel (struct socfpga_fpga_priv*,int ,scalar_t__) ;

__attribute__((used)) static int socfpga_fpga_reset(struct fpga_manager *mgr)
{
 struct socfpga_fpga_priv *priv = mgr->priv;
 u32 ctrl_reg, status;
 int ret;






 ret = socfpga_fpga_cfg_mode_set(priv);
 if (ret)
  return ret;


 socfpga_fpga_set_bitsl(priv, SOCFPGA_FPGMGR_CTL_OFST,
          SOCFPGA_FPGMGR_CTL_EN);


 ctrl_reg = socfpga_fpga_readl(priv, SOCFPGA_FPGMGR_CTL_OFST);
 ctrl_reg |= SOCFPGA_FPGMGR_CTL_NCFGPULL;
 socfpga_fpga_writel(priv, SOCFPGA_FPGMGR_CTL_OFST, ctrl_reg);


 status = socfpga_fpga_wait_for_state(priv, SOCFPGA_FPGMGR_STAT_RESET);


 ctrl_reg &= ~SOCFPGA_FPGMGR_CTL_NCFGPULL;
 socfpga_fpga_writel(priv, SOCFPGA_FPGMGR_CTL_OFST, ctrl_reg);


 if (status)
  return -ETIMEDOUT;

 return 0;
}
