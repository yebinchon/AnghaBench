
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp_gpio {int lock; } ;
struct gpio_chip {int dummy; } ;


 int LP_CONFIG1 ;
 int OUT_LVL_BIT ;
 struct lp_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int inl (unsigned long) ;
 unsigned long lp_gpio_reg (struct gpio_chip*,unsigned int,int ) ;
 int outl (int,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void lp_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 struct lp_gpio *lg = gpiochip_get_data(chip);
 unsigned long reg = lp_gpio_reg(chip, offset, LP_CONFIG1);
 unsigned long flags;

 spin_lock_irqsave(&lg->lock, flags);

 if (value)
  outl(inl(reg) | OUT_LVL_BIT, reg);
 else
  outl(inl(reg) & ~OUT_LVL_BIT, reg);

 spin_unlock_irqrestore(&lg->lock, flags);
}
