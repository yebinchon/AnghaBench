
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;
struct cp2112_device {int irq_mask; } ;


 int __set_bit (int ,int *) ;
 struct cp2112_device* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void cp2112_gpio_irq_unmask(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct cp2112_device *dev = gpiochip_get_data(gc);

 __set_bit(d->hwirq, &dev->irq_mask);
}
