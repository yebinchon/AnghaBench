
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned int ngpio; } ;


 int EINVAL ;

__attribute__((used)) static int bgpio_request(struct gpio_chip *chip, unsigned gpio_pin)
{
 if (gpio_pin < chip->ngpio)
  return 0;

 return -EINVAL;
}
