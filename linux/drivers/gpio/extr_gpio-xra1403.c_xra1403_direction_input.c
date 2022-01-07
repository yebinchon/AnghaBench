
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xra1403 {int regmap; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int XRA_GCR ;
 struct xra1403* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int to_reg (int ,unsigned int) ;

__attribute__((used)) static int xra1403_direction_input(struct gpio_chip *chip, unsigned int offset)
{
 struct xra1403 *xra = gpiochip_get_data(chip);

 return regmap_update_bits(xra->regmap, to_reg(XRA_GCR, offset),
   BIT(offset % 8), BIT(offset % 8));
}
