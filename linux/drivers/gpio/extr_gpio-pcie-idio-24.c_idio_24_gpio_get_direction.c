
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct idio_24_gpio {TYPE_1__* reg; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int ctl; } ;


 unsigned long BIT (int) ;
 struct idio_24_gpio* gpiochip_get_data (struct gpio_chip*) ;
 unsigned long const ioread8 (int *) ;

__attribute__((used)) static int idio_24_gpio_get_direction(struct gpio_chip *chip,
 unsigned int offset)
{
 struct idio_24_gpio *const idio24gpio = gpiochip_get_data(chip);
 const unsigned long out_mode_mask = BIT(1);


 if (offset < 24)
  return 0;


 if (offset < 48)
  return 1;



 return !(ioread8(&idio24gpio->reg->ctl) & out_mode_mask);
}
