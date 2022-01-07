
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp_gpio {unsigned long reg_base; } ;
struct gpio_chip {int dummy; } ;


 int LP_CONFIG1 ;
 int LP_CONFIG2 ;
 struct lp_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static unsigned long lp_gpio_reg(struct gpio_chip *chip, unsigned offset,
     int reg)
{
 struct lp_gpio *lg = gpiochip_get_data(chip);
 int reg_offset;

 if (reg == LP_CONFIG1 || reg == LP_CONFIG2)

  reg_offset = offset * 8;
 else

  reg_offset = (offset / 32) * 4;

 return lg->reg_base + reg + reg_offset;
}
