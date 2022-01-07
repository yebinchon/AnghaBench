
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 unsigned int MSIC_GPIO_DIR_MASK ;
 int MSIC_GPIO_DIR_OUT ;
 unsigned int MSIC_GPIO_DOUT_MASK ;
 int intel_msic_reg_update (int,int,unsigned int) ;
 int msic_gpio_to_oreg (unsigned int) ;

__attribute__((used)) static int msic_gpio_direction_output(struct gpio_chip *chip,
   unsigned offset, int value)
{
 int reg;
 unsigned mask;

 value = (!!value) | MSIC_GPIO_DIR_OUT;
 mask = MSIC_GPIO_DIR_MASK | MSIC_GPIO_DOUT_MASK;

 reg = msic_gpio_to_oreg(offset);
 if (reg < 0)
  return reg;

 return intel_msic_reg_update(reg, value, mask);
}
