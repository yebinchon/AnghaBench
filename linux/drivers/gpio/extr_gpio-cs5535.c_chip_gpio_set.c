
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int GPIO_OUTPUT_VAL ;
 int cs5535_gpio_clear (unsigned int,int ) ;
 int cs5535_gpio_set (unsigned int,int ) ;

__attribute__((used)) static void chip_gpio_set(struct gpio_chip *chip, unsigned offset, int val)
{
 if (val)
  cs5535_gpio_set(offset, GPIO_OUTPUT_VAL);
 else
  cs5535_gpio_clear(offset, GPIO_OUTPUT_VAL);
}
