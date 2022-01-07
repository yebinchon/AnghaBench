
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct em_gio_priv {TYPE_1__ gpio_chip; } ;


 int dev_err (int ,char*,int ) ;
 int gpiochip_lock_as_irq (TYPE_1__*,int ) ;
 struct em_gio_priv* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static int em_gio_irq_reqres(struct irq_data *d)
{
 struct em_gio_priv *p = irq_data_get_irq_chip_data(d);
 int ret;

 ret = gpiochip_lock_as_irq(&p->gpio_chip, irqd_to_hwirq(d));
 if (ret) {
  dev_err(p->gpio_chip.parent,
   "unable to lock HW IRQ %lu for IRQ\n",
   irqd_to_hwirq(d));
  return ret;
 }
 return 0;
}
