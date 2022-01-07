
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct ftgpio_gpio {scalar_t__ base; } ;


 int BIT (int ) ;
 scalar_t__ GPIO_INT_EN ;
 struct ftgpio_gpio* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void ftgpio_gpio_unmask_irq(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct ftgpio_gpio *g = gpiochip_get_data(gc);
 u32 val;

 val = readl(g->base + GPIO_INT_EN);
 val |= BIT(irqd_to_hwirq(d));
 writel(val, g->base + GPIO_INT_EN);
}
