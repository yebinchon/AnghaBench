
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pl061 {int lock; scalar_t__ base; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int) ;
 scalar_t__ GPIOIC ;
 int PL061_GPIO_NR ;
 struct pl061* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void pl061_irq_ack(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct pl061 *pl061 = gpiochip_get_data(gc);
 u8 mask = BIT(irqd_to_hwirq(d) % PL061_GPIO_NR);

 raw_spin_lock(&pl061->lock);
 writeb(mask, pl061->base + GPIOIC);
 raw_spin_unlock(&pl061->lock);
}
