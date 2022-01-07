
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {scalar_t__ base; int label; } ;
struct egpio_info {int reg_shift; int reg_mask; int lock; } ;
struct egpio_chip {int reg_start; int cached_values; int dev; } ;


 struct egpio_info* dev_get_drvdata (int ) ;
 int egpio_pos (struct egpio_info*,unsigned int) ;
 int egpio_writew (int,struct egpio_info*,int) ;
 struct egpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int pr_debug (char*,char*,int,int,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void egpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 unsigned long flag;
 struct egpio_chip *egpio;
 struct egpio_info *ei;
 int pos;
 int reg;
 int shift;

 pr_debug("egpio_set(%s, %d(%d), %d)\n",
   chip->label, offset, offset+chip->base, value);

 egpio = gpiochip_get_data(chip);
 ei = dev_get_drvdata(egpio->dev);
 pos = egpio_pos(ei, offset);
 reg = egpio->reg_start + pos;
 shift = pos << ei->reg_shift;

 pr_debug("egpio %s: reg %d = 0x%04x\n", value ? "set" : "clear",
   reg, (egpio->cached_values >> shift) & ei->reg_mask);

 spin_lock_irqsave(&ei->lock, flag);
 if (value)
  egpio->cached_values |= (1 << offset);
 else
  egpio->cached_values &= ~(1 << offset);
 egpio_writew((egpio->cached_values >> shift) & ei->reg_mask, ei, reg);
 spin_unlock_irqrestore(&ei->lock, flag);
}
