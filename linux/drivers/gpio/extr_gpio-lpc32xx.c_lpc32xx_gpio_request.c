
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned int ngpio; } ;


 int EINVAL ;

__attribute__((used)) static int lpc32xx_gpio_request(struct gpio_chip *chip, unsigned pin)
{
 if (pin < chip->ngpio)
  return 0;

 return -EINVAL;
}
