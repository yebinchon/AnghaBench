
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct gpio_chip {int dummy; } ;
struct adp5520_gpio {int* lut; int master; int output; } ;


 int ADP5520_GPIO_IN ;
 int ADP5520_GPIO_OUT ;
 int adp5520_read (int ,int ,int*) ;
 struct adp5520_gpio* gpiochip_get_data (struct gpio_chip*) ;
 scalar_t__ test_bit (unsigned int,int *) ;

__attribute__((used)) static int adp5520_gpio_get_value(struct gpio_chip *chip, unsigned off)
{
 struct adp5520_gpio *dev;
 uint8_t reg_val;

 dev = gpiochip_get_data(chip);






 if (test_bit(off, &dev->output))
  adp5520_read(dev->master, ADP5520_GPIO_OUT, &reg_val);
 else
  adp5520_read(dev->master, ADP5520_GPIO_IN, &reg_val);

 return !!(reg_val & dev->lut[off]);
}
