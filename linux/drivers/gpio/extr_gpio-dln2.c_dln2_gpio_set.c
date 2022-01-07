
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct dln2_gpio {int dummy; } ;


 int dln2_gpio_pin_set_out_val (struct dln2_gpio*,unsigned int,int) ;
 struct dln2_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static void dln2_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 struct dln2_gpio *dln2 = gpiochip_get_data(chip);

 dln2_gpio_pin_set_out_val(dln2, offset, value);
}
