
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ start; } ;
struct inf_hw {int lock; int ipac; int irqcnt; TYPE_1__ cfg; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int NICCY_IRQ_BIT ;
 int NICCY_IRQ_CTRL_REG ;
 int inl (int) ;
 int irqloops ;
 int mISDNipac_irq (int *,int ) ;
 int outl (int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t
niccy_irq(int intno, void *dev_id)
{
 struct inf_hw *hw = dev_id;
 u32 val;

 spin_lock(&hw->lock);
 val = inl((u32)hw->cfg.start + NICCY_IRQ_CTRL_REG);
 if (!(val & NICCY_IRQ_BIT)) {
  spin_unlock(&hw->lock);
  return IRQ_NONE;
 }
 outl(val, (u32)hw->cfg.start + NICCY_IRQ_CTRL_REG);
 hw->irqcnt++;
 mISDNipac_irq(&hw->ipac, irqloops);
 spin_unlock(&hw->lock);
 return IRQ_HANDLED;
}
