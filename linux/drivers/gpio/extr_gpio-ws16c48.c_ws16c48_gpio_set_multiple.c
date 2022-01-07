
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ws16c48_gpio {unsigned long* io_state; unsigned int* out_state; int lock; scalar_t__ base; } ;
struct gpio_chip {unsigned int ngpio; } ;


 int BITS_PER_LONG ;
 size_t BIT_WORD (unsigned int) ;
 struct ws16c48_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int outb (unsigned int,scalar_t__) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ws16c48_gpio_set_multiple(struct gpio_chip *chip,
 unsigned long *mask, unsigned long *bits)
{
 struct ws16c48_gpio *const ws16c48gpio = gpiochip_get_data(chip);
 unsigned int i;
 const unsigned int gpio_reg_size = 8;
 unsigned int port;
 unsigned int iomask;
 unsigned int bitmask;
 unsigned long flags;


 for (i = 0; i < chip->ngpio; i += gpio_reg_size) {

  if (!mask[BIT_WORD(i)]) {
   i = (BIT_WORD(i) + 1) * BITS_PER_LONG - gpio_reg_size;
   continue;
  }

  port = i / gpio_reg_size;


  iomask = mask[BIT_WORD(i)] & ~ws16c48gpio->io_state[port];
  bitmask = iomask & bits[BIT_WORD(i)];

  raw_spin_lock_irqsave(&ws16c48gpio->lock, flags);


  ws16c48gpio->out_state[port] &= ~iomask;
  ws16c48gpio->out_state[port] |= bitmask;
  outb(ws16c48gpio->out_state[port], ws16c48gpio->base + port);

  raw_spin_unlock_irqrestore(&ws16c48gpio->lock, flags);


  mask[BIT_WORD(i)] >>= gpio_reg_size;
  bits[BIT_WORD(i)] >>= gpio_reg_size;
 }
}
