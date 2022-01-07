
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixp4xx_gpio {scalar_t__ base; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int ) ;
 scalar_t__ IXP4XX_REG_GPIS ;
 int __raw_writel (int ,scalar_t__) ;
 struct ixp4xx_gpio* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void ixp4xx_gpio_irq_ack(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct ixp4xx_gpio *g = gpiochip_get_data(gc);

 __raw_writel(BIT(d->hwirq), g->base + IXP4XX_REG_GPIS);
}
