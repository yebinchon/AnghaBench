
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mcde {scalar_t__ regs; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ MCDE_MISERR ;
 scalar_t__ MCDE_RISERR ;
 int dev_info (int ,char*) ;
 int mcde_display_irq (struct mcde*) ;
 scalar_t__ readl (scalar_t__) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static irqreturn_t mcde_irq(int irq, void *data)
{
 struct mcde *mcde = data;
 u32 val;

 val = readl(mcde->regs + MCDE_MISERR);

 mcde_display_irq(mcde);

 if (val)
  dev_info(mcde->dev, "some error IRQ\n");
 writel(val, mcde->regs + MCDE_RISERR);

 return IRQ_HANDLED;
}
