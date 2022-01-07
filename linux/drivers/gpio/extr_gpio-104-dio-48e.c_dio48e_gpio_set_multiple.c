
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned int ngpio; } ;
struct dio48e_gpio {unsigned long* out_state; int lock; scalar_t__ base; } ;


 int BITS_PER_LONG ;
 size_t BIT_WORD (unsigned int) ;
 struct dio48e_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int outb (unsigned int,scalar_t__) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dio48e_gpio_set_multiple(struct gpio_chip *chip,
 unsigned long *mask, unsigned long *bits)
{
 struct dio48e_gpio *const dio48egpio = gpiochip_get_data(chip);
 unsigned int i;
 const unsigned int gpio_reg_size = 8;
 unsigned int port;
 unsigned int out_port;
 unsigned int bitmask;
 unsigned long flags;


 for (i = 0; i < chip->ngpio; i += gpio_reg_size) {

  if (!mask[BIT_WORD(i)]) {
   i = (BIT_WORD(i) + 1) * BITS_PER_LONG - gpio_reg_size;
   continue;
  }

  port = i / gpio_reg_size;
  out_port = (port > 2) ? port + 1 : port;
  bitmask = mask[BIT_WORD(i)] & bits[BIT_WORD(i)];

  raw_spin_lock_irqsave(&dio48egpio->lock, flags);


  dio48egpio->out_state[port] &= ~mask[BIT_WORD(i)];
  dio48egpio->out_state[port] |= bitmask;
  outb(dio48egpio->out_state[port], dio48egpio->base + out_port);

  raw_spin_unlock_irqrestore(&dio48egpio->lock, flags);


  mask[BIT_WORD(i)] >>= gpio_reg_size;
  bits[BIT_WORD(i)] >>= gpio_reg_size;
 }
}
