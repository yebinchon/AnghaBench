
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct davinci_gpio_controller {unsigned int gpio_unbanked; int* irqs; } ;


 int ENODEV ;
 struct davinci_gpio_controller* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int gpio_to_irq_unbanked(struct gpio_chip *chip, unsigned offset)
{
 struct davinci_gpio_controller *d = gpiochip_get_data(chip);





 if (offset < d->gpio_unbanked)
  return d->irqs[offset];
 else
  return -ENODEV;
}
