
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct tegra_adma_chan {TYPE_2__ vc; TYPE_1__* desc; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int vd; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long tegra_adma_irq_clear (struct tegra_adma_chan*) ;
 int vchan_cyclic_callback (int *) ;

__attribute__((used)) static irqreturn_t tegra_adma_isr(int irq, void *dev_id)
{
 struct tegra_adma_chan *tdc = dev_id;
 unsigned long status;
 unsigned long flags;

 spin_lock_irqsave(&tdc->vc.lock, flags);

 status = tegra_adma_irq_clear(tdc);
 if (status == 0 || !tdc->desc) {
  spin_unlock_irqrestore(&tdc->vc.lock, flags);
  return IRQ_NONE;
 }

 vchan_cyclic_callback(&tdc->desc->vd);

 spin_unlock_irqrestore(&tdc->vc.lock, flags);

 return IRQ_HANDLED;
}
