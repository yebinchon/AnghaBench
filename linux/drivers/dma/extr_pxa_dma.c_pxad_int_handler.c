
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxad_phy {int dummy; } ;
struct pxad_device {struct pxad_phy* phys; scalar_t__ base; } ;
typedef int irqreturn_t ;


 scalar_t__ DINT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int __ffs (int) ;
 int pxad_chan_handler (int,struct pxad_phy*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static irqreturn_t pxad_int_handler(int irq, void *dev_id)
{
 struct pxad_device *pdev = dev_id;
 struct pxad_phy *phy;
 u32 dint = readl(pdev->base + DINT);
 int i, ret = IRQ_NONE;

 while (dint) {
  i = __ffs(dint);
  dint &= (dint - 1);
  phy = &pdev->phys[i];
  if (pxad_chan_handler(irq, phy) == IRQ_HANDLED)
   ret = IRQ_HANDLED;
 }

 return ret;
}
