
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int MSIC_GPIO_DIR_IN ;
 int MSIC_GPIO_DIR_MASK ;
 int intel_msic_reg_update (int,int ,int ) ;
 int msic_gpio_to_oreg (unsigned int) ;

__attribute__((used)) static int msic_gpio_direction_input(struct gpio_chip *chip, unsigned offset)
{
 int reg;

 reg = msic_gpio_to_oreg(offset);
 if (reg < 0)
  return reg;

 return intel_msic_reg_update(reg, MSIC_GPIO_DIR_IN, MSIC_GPIO_DIR_MASK);
}
