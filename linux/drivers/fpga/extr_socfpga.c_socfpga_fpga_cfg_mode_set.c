
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct socfpga_fpga_priv {int dummy; } ;
struct TYPE_2__ {int ctrl; } ;


 int SOCFPGA_FPGMGR_CTL_CDRATIO_MASK ;
 int SOCFPGA_FPGMGR_CTL_CFGWDTH_MASK ;
 int SOCFPGA_FPGMGR_CTL_NCE ;
 int SOCFPGA_FPGMGR_CTL_OFST ;
 TYPE_1__* cfgmgr_modes ;
 int socfpga_fpga_cfg_mode_get (struct socfpga_fpga_priv*) ;
 int socfpga_fpga_readl (struct socfpga_fpga_priv*,int ) ;
 int socfpga_fpga_writel (struct socfpga_fpga_priv*,int ,int ) ;

__attribute__((used)) static int socfpga_fpga_cfg_mode_set(struct socfpga_fpga_priv *priv)
{
 u32 ctrl_reg;
 int mode;


 mode = socfpga_fpga_cfg_mode_get(priv);
 if (mode < 0)
  return mode;


 ctrl_reg = socfpga_fpga_readl(priv, SOCFPGA_FPGMGR_CTL_OFST);
 ctrl_reg &= ~SOCFPGA_FPGMGR_CTL_CDRATIO_MASK;
 ctrl_reg &= ~SOCFPGA_FPGMGR_CTL_CFGWDTH_MASK;
 ctrl_reg |= cfgmgr_modes[mode].ctrl;


 ctrl_reg &= ~SOCFPGA_FPGMGR_CTL_NCE;
 socfpga_fpga_writel(priv, SOCFPGA_FPGMGR_CTL_OFST, ctrl_reg);

 return 0;
}
