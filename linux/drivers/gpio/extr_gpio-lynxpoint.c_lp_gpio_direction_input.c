
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp_gpio {int lock; } ;
struct gpio_chip {int dummy; } ;


 int DIR_BIT ;
 int LP_CONFIG1 ;
 struct lp_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int inl (unsigned long) ;
 unsigned long lp_gpio_reg (struct gpio_chip*,unsigned int,int ) ;
 int outl (int,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int lp_gpio_direction_input(struct gpio_chip *chip, unsigned offset)
{
 struct lp_gpio *lg = gpiochip_get_data(chip);
 unsigned long reg = lp_gpio_reg(chip, offset, LP_CONFIG1);
 unsigned long flags;

 spin_lock_irqsave(&lg->lock, flags);
 outl(inl(reg) | DIR_BIT, reg);
 spin_unlock_irqrestore(&lg->lock, flags);

 return 0;
}
