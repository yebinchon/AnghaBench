
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int IN_LVL_BIT ;
 int LP_CONFIG1 ;
 int inl (unsigned long) ;
 unsigned long lp_gpio_reg (struct gpio_chip*,unsigned int,int ) ;

__attribute__((used)) static int lp_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 unsigned long reg = lp_gpio_reg(chip, offset, LP_CONFIG1);
 return !!(inl(reg) & IN_LVL_BIT);
}
