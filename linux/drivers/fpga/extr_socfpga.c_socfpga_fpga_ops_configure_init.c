
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socfpga_fpga_priv {int dummy; } ;
struct fpga_manager {int dev; struct socfpga_fpga_priv* priv; } ;
struct fpga_image_info {int flags; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int FPGA_MGR_PARTIAL_RECONFIG ;
 int SOCFPGA_FPGMGR_CTL_AXICFGEN ;
 int SOCFPGA_FPGMGR_CTL_OFST ;
 int SOCFPGA_FPGMGR_GPIO_PORTA_EOI_OFST ;
 int SOCFPGA_FPGMGR_MON_NSTATUS ;
 int SOCFPGA_FPGMGR_STAT_CFG ;
 int dev_err (int *,char*) ;
 int socfpga_fpga_reset (struct fpga_manager*) ;
 int socfpga_fpga_set_bitsl (struct socfpga_fpga_priv*,int ,int ) ;
 scalar_t__ socfpga_fpga_wait_for_state (struct socfpga_fpga_priv*,int ) ;
 int socfpga_fpga_writel (struct socfpga_fpga_priv*,int ,int ) ;

__attribute__((used)) static int socfpga_fpga_ops_configure_init(struct fpga_manager *mgr,
        struct fpga_image_info *info,
        const char *buf, size_t count)
{
 struct socfpga_fpga_priv *priv = mgr->priv;
 int ret;

 if (info->flags & FPGA_MGR_PARTIAL_RECONFIG) {
  dev_err(&mgr->dev, "Partial reconfiguration not supported.\n");
  return -EINVAL;
 }

 ret = socfpga_fpga_reset(mgr);
 if (ret)
  return ret;


 if (socfpga_fpga_wait_for_state(priv, SOCFPGA_FPGMGR_STAT_CFG))
  return -ETIMEDOUT;


 socfpga_fpga_writel(priv, SOCFPGA_FPGMGR_GPIO_PORTA_EOI_OFST,
       SOCFPGA_FPGMGR_MON_NSTATUS);


 socfpga_fpga_set_bitsl(priv, SOCFPGA_FPGMGR_CTL_OFST,
          SOCFPGA_FPGMGR_CTL_AXICFGEN);

 return 0;
}
