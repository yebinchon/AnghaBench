
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct syscon_gpio_priv {unsigned int dreg_offset; int syscon; TYPE_1__* data; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {unsigned int dat_bit_offset; } ;


 int BIT (unsigned int) ;
 unsigned int SYSCON_REG_BITS ;
 unsigned int SYSCON_REG_SIZE ;
 struct syscon_gpio_priv* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,unsigned int,int ,int ) ;

__attribute__((used)) static void syscon_gpio_set(struct gpio_chip *chip, unsigned offset, int val)
{
 struct syscon_gpio_priv *priv = gpiochip_get_data(chip);
 unsigned int offs;

 offs = priv->dreg_offset + priv->data->dat_bit_offset + offset;

 regmap_update_bits(priv->syscon,
      (offs / SYSCON_REG_BITS) * SYSCON_REG_SIZE,
      BIT(offs % SYSCON_REG_BITS),
      val ? BIT(offs % SYSCON_REG_BITS) : 0);
}
