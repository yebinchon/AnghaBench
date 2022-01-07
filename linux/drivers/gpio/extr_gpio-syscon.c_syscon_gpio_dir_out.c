
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct syscon_gpio_priv {unsigned int dir_reg_offset; int syscon; TYPE_1__* data; } ;
struct gpio_chip {int (* set ) (struct gpio_chip*,unsigned int,int) ;} ;
struct TYPE_2__ {int flags; unsigned int dir_bit_offset; } ;


 int BIT (unsigned int) ;
 int GPIO_SYSCON_FEAT_DIR ;
 unsigned int SYSCON_REG_BITS ;
 unsigned int SYSCON_REG_SIZE ;
 struct syscon_gpio_priv* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,unsigned int,int ,int ) ;
 int stub1 (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int syscon_gpio_dir_out(struct gpio_chip *chip, unsigned offset, int val)
{
 struct syscon_gpio_priv *priv = gpiochip_get_data(chip);

 if (priv->data->flags & GPIO_SYSCON_FEAT_DIR) {
  unsigned int offs;

  offs = priv->dir_reg_offset +
         priv->data->dir_bit_offset + offset;

  regmap_update_bits(priv->syscon,
       (offs / SYSCON_REG_BITS) * SYSCON_REG_SIZE,
       BIT(offs % SYSCON_REG_BITS),
       BIT(offs % SYSCON_REG_BITS));
 }

 chip->set(chip, offset, val);

 return 0;
}
