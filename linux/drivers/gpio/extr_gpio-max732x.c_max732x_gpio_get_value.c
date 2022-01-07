
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
struct max732x_chip {int dummy; } ;
struct gpio_chip {int dummy; } ;


 struct max732x_chip* gpiochip_get_data (struct gpio_chip*) ;
 int is_group_a (struct max732x_chip*,unsigned int) ;
 int max732x_readb (struct max732x_chip*,int ,unsigned int*) ;

__attribute__((used)) static int max732x_gpio_get_value(struct gpio_chip *gc, unsigned off)
{
 struct max732x_chip *chip = gpiochip_get_data(gc);
 uint8_t reg_val;
 int ret;

 ret = max732x_readb(chip, is_group_a(chip, off), &reg_val);
 if (ret < 0)
  return ret;

 return !!(reg_val & (1u << (off & 0x7)));
}
