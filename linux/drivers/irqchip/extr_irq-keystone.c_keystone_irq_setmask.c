
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keystone_irq_device {int mask; int dev; } ;
struct irq_data {int hwirq; } ;


 int BIT (int ) ;
 int dev_dbg (int ,char*,int ,int ) ;
 struct keystone_irq_device* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void keystone_irq_setmask(struct irq_data *d)
{
 struct keystone_irq_device *kirq = irq_data_get_irq_chip_data(d);

 kirq->mask |= BIT(d->hwirq);
 dev_dbg(kirq->dev, "mask %lu [%x]\n", d->hwirq, kirq->mask);
}
