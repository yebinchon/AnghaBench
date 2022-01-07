
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socfpga_fpga_priv {int dummy; } ;


 int SOCFPGA_FPGMGR_DCLKSTAT_DCNTDONE_E_DONE ;
 int SOCFPGA_FPGMGR_DCLKSTAT_OFST ;
 int socfpga_fpga_writel (struct socfpga_fpga_priv*,int ,int ) ;

__attribute__((used)) static void socfpga_fpga_clear_done_status(struct socfpga_fpga_priv *priv)
{
 socfpga_fpga_writel(priv, SOCFPGA_FPGMGR_DCLKSTAT_OFST,
       SOCFPGA_FPGMGR_DCLKSTAT_DCNTDONE_E_DONE);
}
