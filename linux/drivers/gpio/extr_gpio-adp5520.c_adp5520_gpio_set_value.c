
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct adp5520_gpio {int * lut; int master; } ;


 int ADP5520_GPIO_OUT ;
 int adp5520_clr_bits (int ,int ,int ) ;
 int adp5520_set_bits (int ,int ,int ) ;
 struct adp5520_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static void adp5520_gpio_set_value(struct gpio_chip *chip,
  unsigned off, int val)
{
 struct adp5520_gpio *dev;
 dev = gpiochip_get_data(chip);

 if (val)
  adp5520_set_bits(dev->master, ADP5520_GPIO_OUT, dev->lut[off]);
 else
  adp5520_clr_bits(dev->master, ADP5520_GPIO_OUT, dev->lut[off]);
}
