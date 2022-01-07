
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct adp5520_gpio {int * lut; int master; int output; } ;


 int ADP5520_GPIO_CFG_2 ;
 int ADP5520_GPIO_OUT ;
 int adp5520_clr_bits (int ,int ,int ) ;
 int adp5520_set_bits (int ,int ,int ) ;
 struct adp5520_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int set_bit (unsigned int,int *) ;

__attribute__((used)) static int adp5520_gpio_direction_output(struct gpio_chip *chip,
  unsigned off, int val)
{
 struct adp5520_gpio *dev;
 int ret = 0;
 dev = gpiochip_get_data(chip);

 set_bit(off, &dev->output);

 if (val)
  ret |= adp5520_set_bits(dev->master, ADP5520_GPIO_OUT,
     dev->lut[off]);
 else
  ret |= adp5520_clr_bits(dev->master, ADP5520_GPIO_OUT,
     dev->lut[off]);

 ret |= adp5520_set_bits(dev->master, ADP5520_GPIO_CFG_2,
     dev->lut[off]);

 return ret;
}
