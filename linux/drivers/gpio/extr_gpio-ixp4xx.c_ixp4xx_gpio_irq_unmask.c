
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixp4xx_gpio {int irq_edge; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int ) ;
 struct ixp4xx_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int irq_chip_unmask_parent (struct irq_data*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int ixp4xx_gpio_irq_ack (struct irq_data*) ;

__attribute__((used)) static void ixp4xx_gpio_irq_unmask(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct ixp4xx_gpio *g = gpiochip_get_data(gc);


 if (!(g->irq_edge & BIT(d->hwirq)))
  ixp4xx_gpio_irq_ack(d);

 irq_chip_unmask_parent(d);
}
