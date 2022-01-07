
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct socfpga_fpga_priv {int dummy; } ;
struct fpga_manager {struct socfpga_fpga_priv* priv; } ;
struct fpga_image_info {int dummy; } ;


 int ETIMEDOUT ;
 int SOCFPGA_FPGMGR_CTL_AXICFGEN ;
 int SOCFPGA_FPGMGR_CTL_EN ;
 int SOCFPGA_FPGMGR_CTL_OFST ;
 int SOCFPGA_FPGMGR_STAT_USER_MODE ;
 int socfpga_fpga_clr_bitsl (struct socfpga_fpga_priv*,int ,int ) ;
 scalar_t__ socfpga_fpga_dclk_set_and_wait_clear (struct socfpga_fpga_priv*,int) ;
 int socfpga_fpga_wait_for_config_done (struct socfpga_fpga_priv*) ;
 scalar_t__ socfpga_fpga_wait_for_state (struct socfpga_fpga_priv*,int ) ;

__attribute__((used)) static int socfpga_fpga_ops_configure_complete(struct fpga_manager *mgr,
            struct fpga_image_info *info)
{
 struct socfpga_fpga_priv *priv = mgr->priv;
 u32 status;







 status = socfpga_fpga_wait_for_config_done(priv);
 if (status)
  return status;


 socfpga_fpga_clr_bitsl(priv, SOCFPGA_FPGMGR_CTL_OFST,
          SOCFPGA_FPGMGR_CTL_AXICFGEN);







 if (socfpga_fpga_dclk_set_and_wait_clear(priv, 4))
  return -ETIMEDOUT;


 if (socfpga_fpga_wait_for_state(priv, SOCFPGA_FPGMGR_STAT_USER_MODE))
  return -ETIMEDOUT;


 socfpga_fpga_clr_bitsl(priv, SOCFPGA_FPGMGR_CTL_OFST,
          SOCFPGA_FPGMGR_CTL_EN);

 return 0;
}
