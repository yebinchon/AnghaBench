
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zynq_fpga_priv {int clk; int slcr; } ;
struct fpga_manager {int dev; struct zynq_fpga_priv* priv; } ;
struct fpga_image_info {int flags; } ;


 int CTRL_OFFSET ;
 int CTRL_PCAP_MODE_MASK ;
 int CTRL_PCAP_PR_MASK ;
 int CTRL_PCAP_RATE_EN_MASK ;
 int CTRL_PCFG_PROG_B_MASK ;
 int CTRL_SEC_EN_MASK ;
 int EBUSY ;
 int EINVAL ;
 int FPGA_MGR_ENCRYPTED_BITSTREAM ;
 int FPGA_MGR_PARTIAL_RECONFIG ;
 int FPGA_RST_ALL_MASK ;
 int INIT_POLL_DELAY ;
 int INIT_POLL_TIMEOUT ;
 int LVL_SHFTR_DISABLE_ALL_MASK ;
 int LVL_SHFTR_ENABLE_PS_TO_PL ;
 int MCTRL_OFFSET ;
 int MCTRL_PCAP_LPBK_MASK ;
 int SLCR_FPGA_RST_CTRL_OFFSET ;
 int SLCR_LVL_SHFTR_EN_OFFSET ;
 int STATUS_DMA_Q_E ;
 int STATUS_DMA_Q_F ;
 int STATUS_OFFSET ;
 int STATUS_PCFG_INIT_MASK ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_err (int *,char*) ;
 int regmap_write (int ,int ,int ) ;
 int zynq_fpga_has_sync (char const*,size_t) ;
 int zynq_fpga_poll_timeout (struct zynq_fpga_priv*,int ,int,int,int ,int ) ;
 int zynq_fpga_read (struct zynq_fpga_priv*,int ) ;
 int zynq_fpga_write (struct zynq_fpga_priv*,int ,int) ;

__attribute__((used)) static int zynq_fpga_ops_write_init(struct fpga_manager *mgr,
        struct fpga_image_info *info,
        const char *buf, size_t count)
{
 struct zynq_fpga_priv *priv;
 u32 ctrl, status;
 int err;

 priv = mgr->priv;

 err = clk_enable(priv->clk);
 if (err)
  return err;


 if (info->flags & FPGA_MGR_ENCRYPTED_BITSTREAM) {
  ctrl = zynq_fpga_read(priv, CTRL_OFFSET);
  if (!(ctrl & CTRL_SEC_EN_MASK)) {
   dev_err(&mgr->dev,
    "System not secure, can't use crypted bitstreams\n");
   err = -EINVAL;
   goto out_err;
  }
 }


 if (!(info->flags & FPGA_MGR_PARTIAL_RECONFIG)) {
  if (!zynq_fpga_has_sync(buf, count)) {
   dev_err(&mgr->dev,
    "Invalid bitstream, could not find a sync word. Bitstream must be a byte swapped .bin file\n");
   err = -EINVAL;
   goto out_err;
  }


  regmap_write(priv->slcr, SLCR_FPGA_RST_CTRL_OFFSET,
        FPGA_RST_ALL_MASK);


  regmap_write(priv->slcr, SLCR_LVL_SHFTR_EN_OFFSET,
        LVL_SHFTR_DISABLE_ALL_MASK);

  regmap_write(priv->slcr, SLCR_LVL_SHFTR_EN_OFFSET,
        LVL_SHFTR_ENABLE_PS_TO_PL);







  ctrl = zynq_fpga_read(priv, CTRL_OFFSET);
  ctrl |= CTRL_PCFG_PROG_B_MASK;

  zynq_fpga_write(priv, CTRL_OFFSET, ctrl);

  err = zynq_fpga_poll_timeout(priv, STATUS_OFFSET, status,
          status & STATUS_PCFG_INIT_MASK,
          INIT_POLL_DELAY,
          INIT_POLL_TIMEOUT);
  if (err) {
   dev_err(&mgr->dev, "Timeout waiting for PCFG_INIT\n");
   goto out_err;
  }

  ctrl = zynq_fpga_read(priv, CTRL_OFFSET);
  ctrl &= ~CTRL_PCFG_PROG_B_MASK;

  zynq_fpga_write(priv, CTRL_OFFSET, ctrl);

  err = zynq_fpga_poll_timeout(priv, STATUS_OFFSET, status,
          !(status & STATUS_PCFG_INIT_MASK),
          INIT_POLL_DELAY,
          INIT_POLL_TIMEOUT);
  if (err) {
   dev_err(&mgr->dev, "Timeout waiting for !PCFG_INIT\n");
   goto out_err;
  }

  ctrl = zynq_fpga_read(priv, CTRL_OFFSET);
  ctrl |= CTRL_PCFG_PROG_B_MASK;

  zynq_fpga_write(priv, CTRL_OFFSET, ctrl);

  err = zynq_fpga_poll_timeout(priv, STATUS_OFFSET, status,
          status & STATUS_PCFG_INIT_MASK,
          INIT_POLL_DELAY,
          INIT_POLL_TIMEOUT);
  if (err) {
   dev_err(&mgr->dev, "Timeout waiting for PCFG_INIT\n");
   goto out_err;
  }
 }






 ctrl = zynq_fpga_read(priv, CTRL_OFFSET);
 if (info->flags & FPGA_MGR_ENCRYPTED_BITSTREAM)
  zynq_fpga_write(priv, CTRL_OFFSET,
    (CTRL_PCAP_PR_MASK | CTRL_PCAP_MODE_MASK
     | CTRL_PCAP_RATE_EN_MASK | ctrl));
 else
  zynq_fpga_write(priv, CTRL_OFFSET,
    (CTRL_PCAP_PR_MASK | CTRL_PCAP_MODE_MASK
     | ctrl));



 status = zynq_fpga_read(priv, STATUS_OFFSET);
 if ((status & STATUS_DMA_Q_F) ||
     (status & STATUS_DMA_Q_E) != STATUS_DMA_Q_E) {
  dev_err(&mgr->dev, "DMA command queue not right\n");
  err = -EBUSY;
  goto out_err;
 }


 ctrl = zynq_fpga_read(priv, MCTRL_OFFSET);
 zynq_fpga_write(priv, MCTRL_OFFSET, (~MCTRL_PCAP_LPBK_MASK & ctrl));

 clk_disable(priv->clk);

 return 0;

out_err:
 clk_disable(priv->clk);

 return err;
}
