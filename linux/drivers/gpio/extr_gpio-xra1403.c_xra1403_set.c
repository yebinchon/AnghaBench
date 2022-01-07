
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xra1403 {int regmap; } ;
struct gpio_chip {int parent; } ;


 int BIT (unsigned int) ;
 int XRA_OCR ;
 int dev_err (int ,char*,unsigned int,int) ;
 struct xra1403* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int to_reg (int ,unsigned int) ;

__attribute__((used)) static void xra1403_set(struct gpio_chip *chip, unsigned int offset, int value)
{
 int ret;
 struct xra1403 *xra = gpiochip_get_data(chip);

 ret = regmap_update_bits(xra->regmap, to_reg(XRA_OCR, offset),
   BIT(offset % 8), value ? BIT(offset % 8) : 0);
 if (ret)
  dev_err(chip->parent, "Failed to set pin: %d, ret: %d\n",
    offset, ret);
}
