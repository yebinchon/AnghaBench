
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct em_gio_priv {int gpio_chip; } ;


 int gpiochip_unlock_as_irq (int *,int ) ;
 struct em_gio_priv* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static void em_gio_irq_relres(struct irq_data *d)
{
 struct em_gio_priv *p = irq_data_get_irq_chip_data(d);

 gpiochip_unlock_as_irq(&p->gpio_chip, irqd_to_hwirq(d));
}
