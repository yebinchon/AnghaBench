
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct gpio_rcar_priv {int lock; } ;
struct gpio_chip {unsigned long* valid_mask; scalar_t__ ngpio; } ;


 unsigned long GENMASK (scalar_t__,int ) ;
 int OUTDT ;
 unsigned long gpio_rcar_read (struct gpio_rcar_priv*,int ) ;
 int gpio_rcar_write (struct gpio_rcar_priv*,int ,unsigned long) ;
 struct gpio_rcar_priv* gpiochip_get_data (struct gpio_chip*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gpio_rcar_set_multiple(struct gpio_chip *chip, unsigned long *mask,
       unsigned long *bits)
{
 struct gpio_rcar_priv *p = gpiochip_get_data(chip);
 unsigned long flags;
 u32 val, bankmask;

 bankmask = mask[0] & GENMASK(chip->ngpio - 1, 0);
 if (chip->valid_mask)
  bankmask &= chip->valid_mask[0];

 if (!bankmask)
  return;

 spin_lock_irqsave(&p->lock, flags);
 val = gpio_rcar_read(p, OUTDT);
 val &= ~bankmask;
 val |= (bankmask & bits[0]);
 gpio_rcar_write(p, OUTDT, val);
 spin_unlock_irqrestore(&p->lock, flags);
}
