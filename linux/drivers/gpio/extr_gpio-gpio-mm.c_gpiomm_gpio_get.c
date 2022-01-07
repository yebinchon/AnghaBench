
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiomm_gpio {unsigned int const* io_state; int lock; scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;


 unsigned int BIT (unsigned int) ;
 int EINVAL ;
 struct gpiomm_gpio* gpiochip_get_data (struct gpio_chip*) ;
 unsigned int inb (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int gpiomm_gpio_get(struct gpio_chip *chip, unsigned int offset)
{
 struct gpiomm_gpio *const gpiommgpio = gpiochip_get_data(chip);
 const unsigned int port = offset / 8;
 const unsigned int mask = BIT(offset % 8);
 const unsigned int in_port = (port > 2) ? port + 1 : port;
 unsigned long flags;
 unsigned int port_state;

 spin_lock_irqsave(&gpiommgpio->lock, flags);


 if (!(gpiommgpio->io_state[port] & mask)) {
  spin_unlock_irqrestore(&gpiommgpio->lock, flags);
  return -EINVAL;
 }

 port_state = inb(gpiommgpio->base + in_port);

 spin_unlock_irqrestore(&gpiommgpio->lock, flags);

 return !!(port_state & mask);
}
