
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idio_16_gpio {unsigned long out_state; int lock; scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;


 struct idio_16_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int outb (int,scalar_t__) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void idio_16_gpio_set_multiple(struct gpio_chip *chip,
 unsigned long *mask, unsigned long *bits)
{
 struct idio_16_gpio *const idio16gpio = gpiochip_get_data(chip);
 unsigned long flags;

 raw_spin_lock_irqsave(&idio16gpio->lock, flags);

 idio16gpio->out_state &= ~*mask;
 idio16gpio->out_state |= *mask & *bits;

 if (*mask & 0xFF)
  outb(idio16gpio->out_state, idio16gpio->base);
 if ((*mask >> 8) & 0xFF)
  outb(idio16gpio->out_state >> 8, idio16gpio->base + 4);

 raw_spin_unlock_irqrestore(&idio16gpio->lock, flags);
}
