
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int ichx_gpio_request (struct gpio_chip*,unsigned int) ;

__attribute__((used)) static int ich6_gpio_request(struct gpio_chip *chip, unsigned nr)
{






 if (nr == 16 || nr == 17)
  nr -= 16;

 return ichx_gpio_request(chip, nr);
}
