
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int UNIPHIER_GPIO_PORT_DIR ;
 int uniphier_gpio_offset_write (struct gpio_chip*,unsigned int,int ,int) ;

__attribute__((used)) static int uniphier_gpio_direction_input(struct gpio_chip *chip,
      unsigned int offset)
{
 uniphier_gpio_offset_write(chip, offset, UNIPHIER_GPIO_PORT_DIR, 1);

 return 0;
}
