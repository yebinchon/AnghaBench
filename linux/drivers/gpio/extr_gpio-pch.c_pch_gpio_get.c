
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pch_gpio {TYPE_1__* reg; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int pi; } ;


 struct pch_gpio* gpiochip_get_data (struct gpio_chip*) ;
 unsigned int ioread32 (int *) ;

__attribute__((used)) static int pch_gpio_get(struct gpio_chip *gpio, unsigned nr)
{
 struct pch_gpio *chip = gpiochip_get_data(gpio);

 return (ioread32(&chip->reg->pi) >> nr) & 1;
}
