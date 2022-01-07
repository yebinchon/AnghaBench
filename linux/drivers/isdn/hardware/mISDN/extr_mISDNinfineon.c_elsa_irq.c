
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ start; } ;
struct inf_hw {int lock; int ipac; int irqcnt; TYPE_1__ cfg; } ;
typedef int irqreturn_t ;


 scalar_t__ ELSA_IRQ_ADDR ;
 int ELSA_IRQ_MASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int inb (scalar_t__) ;
 int irqloops ;
 int mISDNipac_irq (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t
elsa_irq(int intno, void *dev_id)
{
 struct inf_hw *hw = dev_id;
 u8 val;

 spin_lock(&hw->lock);
 val = inb((u32)hw->cfg.start + ELSA_IRQ_ADDR);
 if (!(val & ELSA_IRQ_MASK)) {
  spin_unlock(&hw->lock);
  return IRQ_NONE;
 }
 hw->irqcnt++;
 mISDNipac_irq(&hw->ipac, irqloops);
 spin_unlock(&hw->lock);
 return IRQ_HANDLED;
}
