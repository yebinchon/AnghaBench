
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int UNIPHIER_GPIO_PORT_DATA ;
 int uniphier_gpio_offset_read (struct gpio_chip*,unsigned int,int ) ;

__attribute__((used)) static int uniphier_gpio_get(struct gpio_chip *chip, unsigned int offset)
{
 return uniphier_gpio_offset_read(chip, offset, UNIPHIER_GPIO_PORT_DATA);
}
