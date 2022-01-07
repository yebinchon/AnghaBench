
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int flags; } ;
struct gpio_chip {int (* get_direction ) (struct gpio_chip*,unsigned int) ;} ;


 int ENOTSUPP ;
 int FLAG_IS_OUT ;
 int clear_bit (int ,int *) ;
 unsigned int gpio_chip_hwgpio (struct gpio_desc*) ;
 struct gpio_chip* gpiod_to_chip (struct gpio_desc*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct gpio_chip*,unsigned int) ;

int gpiod_get_direction(struct gpio_desc *desc)
{
 struct gpio_chip *chip;
 unsigned offset;
 int ret;

 chip = gpiod_to_chip(desc);
 offset = gpio_chip_hwgpio(desc);

 if (!chip->get_direction)
  return -ENOTSUPP;

 ret = chip->get_direction(chip, offset);
 if (ret > 0) {

  ret = 1;
  clear_bit(FLAG_IS_OUT, &desc->flags);
 }
 if (ret == 0) {

  set_bit(FLAG_IS_OUT, &desc->flags);
 }
 return ret;
}
