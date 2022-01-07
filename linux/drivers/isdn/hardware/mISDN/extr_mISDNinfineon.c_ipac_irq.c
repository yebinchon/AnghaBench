
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* read_reg ) (struct inf_hw*,int ) ;} ;
struct inf_hw {int lock; TYPE_1__ ipac; int irqcnt; } ;
typedef int irqreturn_t ;


 int IPAC_ISTA ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int irqloops ;
 int mISDNipac_irq (TYPE_1__*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct inf_hw*,int ) ;

__attribute__((used)) static irqreturn_t
ipac_irq(int intno, void *dev_id)
{
 struct inf_hw *hw = dev_id;
 u8 val;

 spin_lock(&hw->lock);
 val = hw->ipac.read_reg(hw, IPAC_ISTA);
 if (!(val & 0x3f)) {
  spin_unlock(&hw->lock);
  return IRQ_NONE;
 }
 hw->irqcnt++;
 mISDNipac_irq(&hw->ipac, irqloops);
 spin_unlock(&hw->lock);
 return IRQ_HANDLED;
}
