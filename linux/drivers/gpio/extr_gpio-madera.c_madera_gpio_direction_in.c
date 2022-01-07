
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera_gpio {struct madera* madera; } ;
struct madera {int regmap; } ;
struct gpio_chip {int dummy; } ;


 int MADERA_GP1_DIR ;
 int MADERA_GP1_DIR_MASK ;
 scalar_t__ MADERA_GPIO1_CTRL_2 ;
 struct madera_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static int madera_gpio_direction_in(struct gpio_chip *chip, unsigned int offset)
{
 struct madera_gpio *madera_gpio = gpiochip_get_data(chip);
 struct madera *madera = madera_gpio->madera;
 unsigned int reg_offset = 2 * offset;

 return regmap_update_bits(madera->regmap,
      MADERA_GPIO1_CTRL_2 + reg_offset,
      MADERA_GP1_DIR_MASK, MADERA_GP1_DIR);
}
