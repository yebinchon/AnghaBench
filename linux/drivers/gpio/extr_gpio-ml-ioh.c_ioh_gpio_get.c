
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ioh_gpio {size_t ch; TYPE_2__* reg; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_4__ {TYPE_1__* regs; } ;
struct TYPE_3__ {int pi; } ;


 struct ioh_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int ioread32 (int *) ;

__attribute__((used)) static int ioh_gpio_get(struct gpio_chip *gpio, unsigned nr)
{
 struct ioh_gpio *chip = gpiochip_get_data(gpio);

 return !!(ioread32(&chip->reg->regs[chip->ch].pi) & (1 << nr));
}
