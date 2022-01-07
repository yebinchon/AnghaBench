
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiomm_gpio {int base; int* io_state; unsigned int* control; int lock; } ;
struct gpio_chip {int dummy; } ;


 unsigned int BIT (int) ;
 struct gpiomm_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int outb (unsigned int,unsigned int const) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int gpiomm_gpio_direction_input(struct gpio_chip *chip,
 unsigned int offset)
{
 struct gpiomm_gpio *const gpiommgpio = gpiochip_get_data(chip);
 const unsigned int io_port = offset / 8;
 const unsigned int control_port = io_port / 3;
 const unsigned int control_addr = gpiommgpio->base + 3 + control_port*4;
 unsigned long flags;
 unsigned int control;

 spin_lock_irqsave(&gpiommgpio->lock, flags);


 if (io_port == 2 || io_port == 5) {

  if (offset % 8 > 3) {
   gpiommgpio->io_state[io_port] |= 0xF0;
   gpiommgpio->control[control_port] |= BIT(3);
  } else {
   gpiommgpio->io_state[io_port] |= 0x0F;
   gpiommgpio->control[control_port] |= BIT(0);
  }
 } else {
  gpiommgpio->io_state[io_port] |= 0xFF;
  if (io_port == 0 || io_port == 3)
   gpiommgpio->control[control_port] |= BIT(4);
  else
   gpiommgpio->control[control_port] |= BIT(1);
 }

 control = BIT(7) | gpiommgpio->control[control_port];
 outb(control, control_addr);

 spin_unlock_irqrestore(&gpiommgpio->lock, flags);

 return 0;
}
