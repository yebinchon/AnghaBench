
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun8i_tcon_top {int reg_lock; scalar_t__ regs; } ;
struct device {int of_node; } ;


 int EINVAL ;
 int FIELD_PREP (int ,int) ;
 int TCON_TOP_PORT_DE0_MSK ;
 int TCON_TOP_PORT_DE1_MSK ;
 scalar_t__ TCON_TOP_PORT_SEL_REG ;
 int dev_err (struct device*,char*) ;
 struct sun8i_tcon_top* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sun8i_tcon_top_node_is_tcon_top (int ) ;
 int writel (int ,scalar_t__) ;

int sun8i_tcon_top_de_config(struct device *dev, int mixer, int tcon)
{
 struct sun8i_tcon_top *tcon_top = dev_get_drvdata(dev);
 unsigned long flags;
 u32 reg;

 if (!sun8i_tcon_top_node_is_tcon_top(dev->of_node)) {
  dev_err(dev, "Device is not TCON TOP!\n");
  return -EINVAL;
 }

 if (mixer > 1) {
  dev_err(dev, "Mixer index is too high!\n");
  return -EINVAL;
 }

 if (tcon > 3) {
  dev_err(dev, "TCON index is too high!\n");
  return -EINVAL;
 }

 spin_lock_irqsave(&tcon_top->reg_lock, flags);

 reg = readl(tcon_top->regs + TCON_TOP_PORT_SEL_REG);
 if (mixer == 0) {
  reg &= ~TCON_TOP_PORT_DE0_MSK;
  reg |= FIELD_PREP(TCON_TOP_PORT_DE0_MSK, tcon);
 } else {
  reg &= ~TCON_TOP_PORT_DE1_MSK;
  reg |= FIELD_PREP(TCON_TOP_PORT_DE1_MSK, tcon);
 }
 writel(reg, tcon_top->regs + TCON_TOP_PORT_SEL_REG);

 spin_unlock_irqrestore(&tcon_top->reg_lock, flags);

 return 0;
}
