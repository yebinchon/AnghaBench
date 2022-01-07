
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsc_regs {int iic_enable; } ;
struct brcmstb_i2c_dev {scalar_t__ irq; int device; int done; struct bsc_regs* bsc_regmap; } ;
typedef enum bsc_xfer_cmd { ____Placeholder_bsc_xfer_cmd } bsc_xfer_cmd ;


 int BSC_IIC_EN_ENABLE_MASK ;
 int BSC_IIC_EN_NOACK_MASK ;
 scalar_t__ CMD_RD ;
 scalar_t__ CMD_WR ;
 int EREMOTEIO ;
 int INT_ENABLE ;
 int brcmstb_i2c_enable_disable_irq (struct brcmstb_i2c_dev*,int ) ;
 int brcmstb_i2c_wait_for_completion (struct brcmstb_i2c_dev*) ;
 int brcmstb_i2c_wait_if_busy (struct brcmstb_i2c_dev*) ;
 int bsc_readl (struct brcmstb_i2c_dev*,int ) ;
 int bsc_writel (struct brcmstb_i2c_dev*,int ,int ) ;
 int * cmd_string ;
 int cnt_reg ;
 int dev_dbg (int ,char*,int ) ;
 int iic_enable ;
 int reinit_completion (int *) ;

__attribute__((used)) static int brcmstb_send_i2c_cmd(struct brcmstb_i2c_dev *dev,
    enum bsc_xfer_cmd cmd)
{
 int rc = 0;
 struct bsc_regs *pi2creg = dev->bsc_regmap;


 rc = brcmstb_i2c_wait_if_busy(dev);
 if (rc < 0)
  return rc;


 if (dev->irq >= 0)
  reinit_completion(&dev->done);


 brcmstb_i2c_enable_disable_irq(dev, INT_ENABLE);


 pi2creg->iic_enable |= BSC_IIC_EN_ENABLE_MASK;
 bsc_writel(dev, pi2creg->iic_enable, iic_enable);


 rc = brcmstb_i2c_wait_for_completion(dev);
 if (rc) {
  dev_dbg(dev->device, "intr timeout for cmd %s\n",
   cmd_string[cmd]);
  goto cmd_out;
 }

 if ((CMD_RD || CMD_WR) &&
     bsc_readl(dev, iic_enable) & BSC_IIC_EN_NOACK_MASK) {
  rc = -EREMOTEIO;
  dev_dbg(dev->device, "controller received NOACK intr for %s\n",
   cmd_string[cmd]);
 }

cmd_out:
 bsc_writel(dev, 0, cnt_reg);
 bsc_writel(dev, 0, iic_enable);

 return rc;
}
