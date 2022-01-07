
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

__attribute__((used)) static int it87_gpio_get(struct gpio_chip *chip, unsigned gpio_num)
{
 u16 reg;
 u8 mask;
 struct it87_gpio *it87_gpio = gpiochip_get_data(chip);

 mask = 1 << (gpio_num % 8);
 reg = (gpio_num / 8) + it87_gpio->io_base;

 return !!(inb(reg) & mask);
}
