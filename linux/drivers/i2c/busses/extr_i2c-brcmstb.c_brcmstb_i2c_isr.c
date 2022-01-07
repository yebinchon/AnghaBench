
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmstb_i2c_dev {int device; int done; } ;
typedef int irqreturn_t ;


 int BSC_CTL_REG_INT_EN_MASK ;
 int INT_DISABLE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int brcmstb_i2c_enable_disable_irq (struct brcmstb_i2c_dev*,int ) ;
 int bsc_readl (struct brcmstb_i2c_dev*,int ) ;
 int complete (int *) ;
 int ctl_reg ;
 int dev_dbg (int ,char*,...) ;
 int iic_enable ;

__attribute__((used)) static irqreturn_t brcmstb_i2c_isr(int irq, void *devid)
{
 struct brcmstb_i2c_dev *dev = devid;
 u32 status_bsc_ctl = bsc_readl(dev, ctl_reg);
 u32 status_iic_intrp = bsc_readl(dev, iic_enable);

 dev_dbg(dev->device, "isr CTL_REG %x IIC_EN %x\n",
  status_bsc_ctl, status_iic_intrp);

 if (!(status_bsc_ctl & BSC_CTL_REG_INT_EN_MASK))
  return IRQ_NONE;

 brcmstb_i2c_enable_disable_irq(dev, INT_DISABLE);
 complete(&dev->done);

 dev_dbg(dev->device, "isr handled");
 return IRQ_HANDLED;
}
