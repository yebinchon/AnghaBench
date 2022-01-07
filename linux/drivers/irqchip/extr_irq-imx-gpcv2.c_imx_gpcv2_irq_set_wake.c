
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int hwirq; struct gpcv2_irqchip_data* chip_data; } ;
struct gpcv2_irqchip_data {int* wakeup_sources; int rlock; } ;


 int BIT (int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int imx_gpcv2_irq_set_wake(struct irq_data *d, unsigned int on)
{
 struct gpcv2_irqchip_data *cd = d->chip_data;
 unsigned int idx = d->hwirq / 32;
 unsigned long flags;
 u32 mask, val;

 raw_spin_lock_irqsave(&cd->rlock, flags);
 mask = BIT(d->hwirq % 32);
 val = cd->wakeup_sources[idx];

 cd->wakeup_sources[idx] = on ? (val & ~mask) : (val | mask);
 raw_spin_unlock_irqrestore(&cd->rlock, flags);






 return 0;
}
