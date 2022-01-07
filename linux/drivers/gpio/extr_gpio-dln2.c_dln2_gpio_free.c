
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct dln2_gpio {int dummy; } ;


 int DLN2_GPIO_PIN_DISABLE ;
 int dln2_gpio_pin_cmd (struct dln2_gpio*,int ,unsigned int) ;
 struct dln2_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static void dln2_gpio_free(struct gpio_chip *chip, unsigned offset)
{
 struct dln2_gpio *dln2 = gpiochip_get_data(chip);

 dln2_gpio_pin_cmd(dln2, DLN2_GPIO_PIN_DISABLE, offset);
}
