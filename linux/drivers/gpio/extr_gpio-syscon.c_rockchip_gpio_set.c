
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct syscon_gpio_priv {unsigned int dreg_offset; int syscon; TYPE_1__* data; } ;
struct gpio_chip {int parent; } ;
struct TYPE_2__ {unsigned int dat_bit_offset; } ;


 int BIT (int) ;
 unsigned int SYSCON_REG_BITS ;
 unsigned int SYSCON_REG_SIZE ;
 int dev_err (int ,char*,int) ;
 struct syscon_gpio_priv* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_write (int ,unsigned int,int) ;

__attribute__((used)) static void rockchip_gpio_set(struct gpio_chip *chip, unsigned int offset,
         int val)
{
 struct syscon_gpio_priv *priv = gpiochip_get_data(chip);
 unsigned int offs;
 u8 bit;
 u32 data;
 int ret;

 offs = priv->dreg_offset + priv->data->dat_bit_offset + offset;
 bit = offs % SYSCON_REG_BITS;
 data = (val ? BIT(bit) : 0) | BIT(bit + 16);
 ret = regmap_write(priv->syscon,
      (offs / SYSCON_REG_BITS) * SYSCON_REG_SIZE,
      data);
 if (ret < 0)
  dev_err(chip->parent, "gpio write failed ret(%d)\n", ret);
}
