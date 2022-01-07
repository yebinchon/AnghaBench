
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int GPIO_IO_SEL ;
 int ichx_write_bit (int ,unsigned int,int,int) ;

__attribute__((used)) static int ichx_gpio_direction_input(struct gpio_chip *gpio, unsigned nr)
{




 return ichx_write_bit(GPIO_IO_SEL, nr, 1, 1);
}
