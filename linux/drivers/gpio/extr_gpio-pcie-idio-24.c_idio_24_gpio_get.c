
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct idio_24_gpio {TYPE_1__* reg; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int ttl_in0_7; int ttl_out0_7; int ctl; int in16_23; int in8_15; int in0_7; int out16_23; int out8_15; int out0_7; } ;


 unsigned long BIT (int) ;
 struct idio_24_gpio* gpiochip_get_data (struct gpio_chip*) ;
 unsigned long const ioread8 (int *) ;

__attribute__((used)) static int idio_24_gpio_get(struct gpio_chip *chip, unsigned int offset)
{
 struct idio_24_gpio *const idio24gpio = gpiochip_get_data(chip);
 const unsigned long offset_mask = BIT(offset % 8);
 const unsigned long out_mode_mask = BIT(1);


 if (offset < 8)
  return !!(ioread8(&idio24gpio->reg->out0_7) & offset_mask);

 if (offset < 16)
  return !!(ioread8(&idio24gpio->reg->out8_15) & offset_mask);

 if (offset < 24)
  return !!(ioread8(&idio24gpio->reg->out16_23) & offset_mask);


 if (offset < 32)
  return !!(ioread8(&idio24gpio->reg->in0_7) & offset_mask);

 if (offset < 40)
  return !!(ioread8(&idio24gpio->reg->in8_15) & offset_mask);

 if (offset < 48)
  return !!(ioread8(&idio24gpio->reg->in16_23) & offset_mask);


 if (ioread8(&idio24gpio->reg->ctl) & out_mode_mask)
  return !!(ioread8(&idio24gpio->reg->ttl_out0_7) & offset_mask);


 return !!(ioread8(&idio24gpio->reg->ttl_in0_7) & offset_mask);
}
