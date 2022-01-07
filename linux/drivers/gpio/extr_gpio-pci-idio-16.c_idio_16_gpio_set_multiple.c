
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct idio_16_gpio {int lock; TYPE_1__* reg; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int out8_15; int out0_7; } ;


 struct idio_16_gpio* gpiochip_get_data (struct gpio_chip*) ;
 unsigned long ioread8 (int *) ;
 int iowrite8 (unsigned int,int *) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void idio_16_gpio_set_multiple(struct gpio_chip *chip,
 unsigned long *mask, unsigned long *bits)
{
 struct idio_16_gpio *const idio16gpio = gpiochip_get_data(chip);
 unsigned long flags;
 unsigned int out_state;

 raw_spin_lock_irqsave(&idio16gpio->lock, flags);


 if (*mask & 0xFF) {
  out_state = ioread8(&idio16gpio->reg->out0_7) & ~*mask;
  out_state |= *mask & *bits;
  iowrite8(out_state, &idio16gpio->reg->out0_7);
 }


 *mask >>= 8;


 if (*mask & 0xFF) {
  *bits >>= 8;
  out_state = ioread8(&idio16gpio->reg->out8_15) & ~*mask;
  out_state |= *mask & *bits;
  iowrite8(out_state, &idio16gpio->reg->out8_15);
 }

 raw_spin_unlock_irqrestore(&idio16gpio->lock, flags);
}
