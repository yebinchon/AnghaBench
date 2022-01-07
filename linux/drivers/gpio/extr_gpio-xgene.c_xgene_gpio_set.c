
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_gpio {int lock; } ;
struct gpio_chip {int dummy; } ;


 int __xgene_gpio_set (struct gpio_chip*,unsigned int,int) ;
 struct xgene_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void xgene_gpio_set(struct gpio_chip *gc, unsigned int offset, int val)
{
 struct xgene_gpio *chip = gpiochip_get_data(gc);
 unsigned long flags;

 spin_lock_irqsave(&chip->lock, flags);
 __xgene_gpio_set(gc, offset, val);
 spin_unlock_irqrestore(&chip->lock, flags);
}
