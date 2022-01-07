
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int GPIO_READ_BACK ;
 int cs5535_gpio_isset (unsigned int,int ) ;

__attribute__((used)) static int chip_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 return cs5535_gpio_isset(offset, GPIO_READ_BACK);
}
