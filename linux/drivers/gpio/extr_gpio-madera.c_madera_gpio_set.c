
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera_gpio {struct madera* madera; } ;
struct madera {int dev; int regmap; } ;
struct gpio_chip {int dummy; } ;


 unsigned int MADERA_GP1_LVL ;
 int MADERA_GP1_LVL_MASK ;
 scalar_t__ MADERA_GPIO1_CTRL_1 ;
 int dev_warn (int ,char*,scalar_t__,int) ;
 struct madera_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,scalar_t__,int ,unsigned int) ;

__attribute__((used)) static void madera_gpio_set(struct gpio_chip *chip, unsigned int offset,
       int value)
{
 struct madera_gpio *madera_gpio = gpiochip_get_data(chip);
 struct madera *madera = madera_gpio->madera;
 unsigned int reg_offset = 2 * offset;
 unsigned int reg_val = value ? MADERA_GP1_LVL : 0;
 int ret;

 ret = regmap_update_bits(madera->regmap,
     MADERA_GPIO1_CTRL_1 + reg_offset,
     MADERA_GP1_LVL_MASK, reg_val);


 if (ret)
  dev_warn(madera->dev, "Failed to write to 0x%x (%d)\n",
    MADERA_GPIO1_CTRL_1 + reg_offset, ret);
}
