
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int p; } ;
struct inf_hw {int lock; TYPE_1__ cfg; int ipac; int irqcnt; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PITA_INT0_STATUS ;
 int irqloops ;
 int mISDNipac_irq (int *,int ) ;
 int readb (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writeb (int,int ) ;

__attribute__((used)) static irqreturn_t
diva20x_irq(int intno, void *dev_id)
{
 struct inf_hw *hw = dev_id;
 u8 val;

 spin_lock(&hw->lock);
 val = readb(hw->cfg.p);
 if (!(val & PITA_INT0_STATUS)) {
  spin_unlock(&hw->lock);
  return IRQ_NONE;
 }
 hw->irqcnt++;
 mISDNipac_irq(&hw->ipac, irqloops);
 writeb(PITA_INT0_STATUS, hw->cfg.p);
 spin_unlock(&hw->lock);
 return IRQ_HANDLED;
}
