
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct bcm6345_l1_chip {int lock; } ;


 int __bcm6345_l1_unmask (struct irq_data*) ;
 struct bcm6345_l1_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void bcm6345_l1_unmask(struct irq_data *d)
{
 struct bcm6345_l1_chip *intc = irq_data_get_irq_chip_data(d);
 unsigned long flags;

 raw_spin_lock_irqsave(&intc->lock, flags);
 __bcm6345_l1_unmask(d);
 raw_spin_unlock_irqrestore(&intc->lock, flags);
}
