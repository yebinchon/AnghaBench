
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct adp5520_gpio {int * lut; int master; int output; } ;


 int ADP5520_GPIO_CFG_2 ;
 int adp5520_clr_bits (int ,int ,int ) ;
 int clear_bit (unsigned int,int *) ;
 struct adp5520_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int adp5520_gpio_direction_input(struct gpio_chip *chip, unsigned off)
{
 struct adp5520_gpio *dev;
 dev = gpiochip_get_data(chip);

 clear_bit(off, &dev->output);

 return adp5520_clr_bits(dev->master, ADP5520_GPIO_CFG_2,
    dev->lut[off]);
}
