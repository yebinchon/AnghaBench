
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp87565_gpio {int map; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int EINVAL ;
 int LP87565_REG_PIN_FUNCTION ;
 struct lp87565_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int lp87565_gpio_request(struct gpio_chip *gc, unsigned int offset)
{
 struct lp87565_gpio *gpio = gpiochip_get_data(gc);
 int ret;

 switch (offset) {
 case 0:
 case 1:
 case 2:





  ret = regmap_update_bits(gpio->map,
      LP87565_REG_PIN_FUNCTION,
      BIT(offset), BIT(offset));
  if (ret)
   return ret;

  break;
 default:
  return -EINVAL;
 }

 return 0;
}
