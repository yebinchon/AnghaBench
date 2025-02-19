
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc5t583_gpio {TYPE_1__* rc5t583; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int irq_base; } ;


 int EINVAL ;
 int RC5T583_IRQ_GPIO0 ;
 unsigned int RC5T583_MAX_GPIO ;
 struct rc5t583_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int rc5t583_gpio_to_irq(struct gpio_chip *gc, unsigned offset)
{
 struct rc5t583_gpio *rc5t583_gpio = gpiochip_get_data(gc);

 if (offset < RC5T583_MAX_GPIO)
  return rc5t583_gpio->rc5t583->irq_base +
    RC5T583_IRQ_GPIO0 + offset;
 return -EINVAL;
}
