
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct socfpga_fpga_priv {int dummy; } ;


 int ETIMEDOUT ;
 int SOCFPGA_FPGMGR_DCLKCNT_OFST ;
 scalar_t__ SOCFPGA_FPGMGR_DCLKSTAT_DCNTDONE_E_DONE ;
 int SOCFPGA_FPGMGR_DCLKSTAT_OFST ;
 int socfpga_fpga_clear_done_status (struct socfpga_fpga_priv*) ;
 scalar_t__ socfpga_fpga_readl (struct socfpga_fpga_priv*,int ) ;
 int socfpga_fpga_writel (struct socfpga_fpga_priv*,int ,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int socfpga_fpga_dclk_set_and_wait_clear(struct socfpga_fpga_priv *priv,
      u32 count)
{
 int timeout = 2;
 u32 done;


 if (socfpga_fpga_readl(priv, SOCFPGA_FPGMGR_DCLKSTAT_OFST))
  socfpga_fpga_clear_done_status(priv);


 socfpga_fpga_writel(priv, SOCFPGA_FPGMGR_DCLKCNT_OFST, count);


 do {
  done = socfpga_fpga_readl(priv, SOCFPGA_FPGMGR_DCLKSTAT_OFST);
  if (done == SOCFPGA_FPGMGR_DCLKSTAT_DCNTDONE_E_DONE) {
   socfpga_fpga_clear_done_status(priv);
   return 0;
  }
  udelay(1);
 } while (timeout--);

 return -ETIMEDOUT;
}
