
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct exar_gpio_chip {unsigned int first_pin; } ;


 int BIT (unsigned int) ;
 unsigned int EXAR_OFFSET_MPIOSEL_HI ;
 unsigned int EXAR_OFFSET_MPIOSEL_LO ;
 int exar_get (struct gpio_chip*,unsigned int) ;
 struct exar_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int exar_get_direction(struct gpio_chip *chip, unsigned int offset)
{
 struct exar_gpio_chip *exar_gpio = gpiochip_get_data(chip);
 unsigned int addr = (offset + exar_gpio->first_pin) / 8 ?
  EXAR_OFFSET_MPIOSEL_HI : EXAR_OFFSET_MPIOSEL_LO;
 unsigned int bit = (offset + exar_gpio->first_pin) % 8;

 return !!(exar_get(chip, addr) & BIT(bit));
}
