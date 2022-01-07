
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct exar_gpio_chip {unsigned int first_pin; } ;


 unsigned int EXAR_OFFSET_MPIOLVL_HI ;
 unsigned int EXAR_OFFSET_MPIOLVL_LO ;
 int exar_update (struct gpio_chip*,unsigned int,int,unsigned int) ;
 struct exar_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static void exar_set_value(struct gpio_chip *chip, unsigned int offset,
      int value)
{
 struct exar_gpio_chip *exar_gpio = gpiochip_get_data(chip);
 unsigned int addr = (offset + exar_gpio->first_pin) / 8 ?
  EXAR_OFFSET_MPIOLVL_HI : EXAR_OFFSET_MPIOLVL_LO;
 unsigned int bit = (offset + exar_gpio->first_pin) % 8;

 exar_update(chip, addr, value, bit);
}
