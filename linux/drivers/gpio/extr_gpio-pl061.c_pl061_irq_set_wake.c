
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl061 {int parent_irq; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;


 struct pl061* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_irq_wake (int ,unsigned int) ;

__attribute__((used)) static int pl061_irq_set_wake(struct irq_data *d, unsigned int state)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct pl061 *pl061 = gpiochip_get_data(gc);

 return irq_set_irq_wake(pl061->parent_irq, state);
}
