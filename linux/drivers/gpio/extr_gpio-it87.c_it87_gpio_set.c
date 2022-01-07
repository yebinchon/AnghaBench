
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct it87_gpio {scalar_t__ io_base; } ;
struct gpio_chip {int dummy; } ;


 struct it87_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void it87_gpio_set(struct gpio_chip *chip,
     unsigned gpio_num, int val)
{
 u8 mask, curr_vals;
 u16 reg;
 struct it87_gpio *it87_gpio = gpiochip_get_data(chip);

 mask = 1 << (gpio_num % 8);
 reg = (gpio_num / 8) + it87_gpio->io_base;

 curr_vals = inb(reg);
 if (val)
  outb(curr_vals | mask, reg);
 else
  outb(curr_vals & ~mask, reg);
}
