
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct gpio_chip {int parent; } ;


 int gpiochip_reqres_irq (struct gpio_chip*,int ) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static int zynq_gpio_irq_reqres(struct irq_data *d)
{
 struct gpio_chip *chip = irq_data_get_irq_chip_data(d);
 int ret;

 ret = pm_runtime_get_sync(chip->parent);
 if (ret < 0)
  return ret;

 return gpiochip_reqres_irq(chip, d->hwirq);
}
