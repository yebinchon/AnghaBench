
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct ad5592r_state {int gpio_map; int dev; } ;


 int BIT (unsigned int) ;
 int ENODEV ;
 int dev_err (int ,char*,unsigned int) ;
 struct ad5592r_state* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int ad5592r_gpio_request(struct gpio_chip *chip, unsigned offset)
{
 struct ad5592r_state *st = gpiochip_get_data(chip);

 if (!(st->gpio_map & BIT(offset))) {
  dev_err(st->dev, "GPIO %d is reserved by alternate function\n",
   offset);
  return -ENODEV;
 }

 return 0;
}
