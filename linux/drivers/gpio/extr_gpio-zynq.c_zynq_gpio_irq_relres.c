
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct gpio_chip {int parent; } ;


 int gpiochip_relres_irq (struct gpio_chip*,int ) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int pm_runtime_put (int ) ;

__attribute__((used)) static void zynq_gpio_irq_relres(struct irq_data *d)
{
 struct gpio_chip *chip = irq_data_get_irq_chip_data(d);

 gpiochip_relres_irq(chip, d->hwirq);
 pm_runtime_put(chip->parent);
}
