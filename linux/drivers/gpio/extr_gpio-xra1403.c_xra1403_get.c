
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xra1403 {int regmap; } ;
struct gpio_chip {int dummy; } ;


 unsigned int BIT (unsigned int) ;
 int XRA_GSR ;
 struct xra1403* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int to_reg (int ,unsigned int) ;

__attribute__((used)) static int xra1403_get(struct gpio_chip *chip, unsigned int offset)
{
 int ret;
 unsigned int val;
 struct xra1403 *xra = gpiochip_get_data(chip);

 ret = regmap_read(xra->regmap, to_reg(XRA_GSR, offset), &val);
 if (ret)
  return ret;

 return !!(val & BIT(offset % 8));
}
