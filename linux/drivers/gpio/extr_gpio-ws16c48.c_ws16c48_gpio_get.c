
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ws16c48_gpio {unsigned int const* io_state; int lock; scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;


 unsigned int BIT (unsigned int) ;
 int EINVAL ;
 struct ws16c48_gpio* gpiochip_get_data (struct gpio_chip*) ;
 unsigned int inb (scalar_t__) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ws16c48_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct ws16c48_gpio *const ws16c48gpio = gpiochip_get_data(chip);
 const unsigned port = offset / 8;
 const unsigned mask = BIT(offset % 8);
 unsigned long flags;
 unsigned port_state;

 raw_spin_lock_irqsave(&ws16c48gpio->lock, flags);


 if (!(ws16c48gpio->io_state[port] & mask)) {
  raw_spin_unlock_irqrestore(&ws16c48gpio->lock, flags);
  return -EINVAL;
 }

 port_state = inb(ws16c48gpio->base + port);

 raw_spin_unlock_irqrestore(&ws16c48gpio->lock, flags);

 return !!(port_state & mask);
}
