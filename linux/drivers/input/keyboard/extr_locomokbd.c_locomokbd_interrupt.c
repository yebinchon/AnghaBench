
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct locomokbd {scalar_t__ base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ LOCOMO_KIC ;
 int locomo_readl (scalar_t__) ;
 int locomo_writel (int,scalar_t__) ;
 int locomokbd_scankeyboard (struct locomokbd*) ;
 int udelay (int) ;

__attribute__((used)) static irqreturn_t locomokbd_interrupt(int irq, void *dev_id)
{
 struct locomokbd *locomokbd = dev_id;
 u16 r;

 r = locomo_readl(locomokbd->base + LOCOMO_KIC);
 if ((r & 0x0001) == 0)
  return IRQ_HANDLED;

 locomo_writel(r & ~0x0100, locomokbd->base + LOCOMO_KIC);


 udelay(100);

 locomokbd_scankeyboard(locomokbd);
 return IRQ_HANDLED;
}
