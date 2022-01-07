
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct dln2_gpio {int unmasked_irqs; } ;


 int clear_bit (int,int ) ;
 struct dln2_gpio* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static void dln2_irq_mask(struct irq_data *irqd)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(irqd);
 struct dln2_gpio *dln2 = gpiochip_get_data(gc);
 int pin = irqd_to_hwirq(irqd);

 clear_bit(pin, dln2->unmasked_irqs);
}
