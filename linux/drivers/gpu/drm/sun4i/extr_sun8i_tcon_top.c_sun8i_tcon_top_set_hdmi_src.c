
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun8i_tcon_top {int reg_lock; scalar_t__ regs; } ;
struct device {int of_node; } ;


 int EINVAL ;
 int FIELD_PREP (int ,int) ;
 scalar_t__ TCON_TOP_GATE_SRC_REG ;
 int TCON_TOP_HDMI_SRC_MSK ;
 int dev_err (struct device*,char*) ;
 struct sun8i_tcon_top* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sun8i_tcon_top_node_is_tcon_top (int ) ;
 int writel (int ,scalar_t__) ;

int sun8i_tcon_top_set_hdmi_src(struct device *dev, int tcon)
{
 struct sun8i_tcon_top *tcon_top = dev_get_drvdata(dev);
 unsigned long flags;
 u32 val;

 if (!sun8i_tcon_top_node_is_tcon_top(dev->of_node)) {
  dev_err(dev, "Device is not TCON TOP!\n");
  return -EINVAL;
 }

 if (tcon < 2 || tcon > 3) {
  dev_err(dev, "TCON index must be 2 or 3!\n");
  return -EINVAL;
 }

 spin_lock_irqsave(&tcon_top->reg_lock, flags);

 val = readl(tcon_top->regs + TCON_TOP_GATE_SRC_REG);
 val &= ~TCON_TOP_HDMI_SRC_MSK;
 val |= FIELD_PREP(TCON_TOP_HDMI_SRC_MSK, tcon - 1);
 writel(val, tcon_top->regs + TCON_TOP_GATE_SRC_REG);

 spin_unlock_irqrestore(&tcon_top->reg_lock, flags);

 return 0;
}
