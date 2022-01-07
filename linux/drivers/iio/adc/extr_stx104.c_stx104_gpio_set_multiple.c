
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stx104_gpio {unsigned long out_state; int lock; int base; } ;
struct gpio_chip {int dummy; } ;


 struct stx104_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int outb (unsigned long,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void stx104_gpio_set_multiple(struct gpio_chip *chip,
 unsigned long *mask, unsigned long *bits)
{
 struct stx104_gpio *const stx104gpio = gpiochip_get_data(chip);
 unsigned long flags;


 if (!(*mask & 0xF0))
  return;

 *mask >>= 4;
 *bits >>= 4;

 spin_lock_irqsave(&stx104gpio->lock, flags);

 stx104gpio->out_state &= ~*mask;
 stx104gpio->out_state |= *mask & *bits;
 outb(stx104gpio->out_state, stx104gpio->base);

 spin_unlock_irqrestore(&stx104gpio->lock, flags);
}
