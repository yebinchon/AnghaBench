
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_rcar_priv {int lock; } ;
struct gpio_chip {int dummy; } ;


 int OUTDT ;
 int gpio_rcar_modify_bit (struct gpio_rcar_priv*,int ,unsigned int,int) ;
 struct gpio_rcar_priv* gpiochip_get_data (struct gpio_chip*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gpio_rcar_set(struct gpio_chip *chip, unsigned offset, int value)
{
 struct gpio_rcar_priv *p = gpiochip_get_data(chip);
 unsigned long flags;

 spin_lock_irqsave(&p->lock, flags);
 gpio_rcar_modify_bit(p, OUTDT, offset, value);
 spin_unlock_irqrestore(&p->lock, flags);
}
