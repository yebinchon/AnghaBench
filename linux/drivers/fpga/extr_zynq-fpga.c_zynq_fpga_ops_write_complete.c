
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zynq_fpga_priv {int slcr; int clk; } ;
struct fpga_manager {struct zynq_fpga_priv* priv; } ;
struct fpga_image_info {int flags; } ;


 int CTRL_OFFSET ;
 int CTRL_PCAP_PR_MASK ;
 int FPGA_MGR_PARTIAL_RECONFIG ;
 int FPGA_RST_NONE_MASK ;
 int INIT_POLL_DELAY ;
 int INIT_POLL_TIMEOUT ;
 int INT_STS_OFFSET ;
 int IXR_PCFG_DONE_MASK ;
 int LVL_SHFTR_ENABLE_PL_TO_PS ;
 int SLCR_FPGA_RST_CTRL_OFFSET ;
 int SLCR_LVL_SHFTR_EN_OFFSET ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int regmap_write (int ,int ,int ) ;
 int zynq_fpga_poll_timeout (struct zynq_fpga_priv*,int ,int,int,int ,int ) ;
 int zynq_fpga_read (struct zynq_fpga_priv*,int ) ;
 int zynq_fpga_write (struct zynq_fpga_priv*,int ,int) ;

__attribute__((used)) static int zynq_fpga_ops_write_complete(struct fpga_manager *mgr,
     struct fpga_image_info *info)
{
 struct zynq_fpga_priv *priv = mgr->priv;
 int err;
 u32 intr_status;

 err = clk_enable(priv->clk);
 if (err)
  return err;


 zynq_fpga_write(priv, CTRL_OFFSET,
  zynq_fpga_read(priv, CTRL_OFFSET) & ~CTRL_PCAP_PR_MASK);

 err = zynq_fpga_poll_timeout(priv, INT_STS_OFFSET, intr_status,
         intr_status & IXR_PCFG_DONE_MASK,
         INIT_POLL_DELAY,
         INIT_POLL_TIMEOUT);

 clk_disable(priv->clk);

 if (err)
  return err;


 if (!(info->flags & FPGA_MGR_PARTIAL_RECONFIG)) {

  regmap_write(priv->slcr, SLCR_LVL_SHFTR_EN_OFFSET,
        LVL_SHFTR_ENABLE_PL_TO_PS);


  regmap_write(priv->slcr, SLCR_FPGA_RST_CTRL_OFFSET,
        FPGA_RST_NONE_MASK);
 }

 return 0;
}
