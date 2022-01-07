
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {int dummy; } ;
struct creg_layout {int* on; int* off; int* shift; int* bit_per_gpio; } ;
struct creg_gpio {int lock; int regs; struct creg_layout* layout; } ;


 int GENMASK (int,int ) ;
 struct creg_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

__attribute__((used)) static void creg_gpio_set(struct gpio_chip *gc, unsigned int offset, int val)
{
 struct creg_gpio *hcg = gpiochip_get_data(gc);
 const struct creg_layout *layout = hcg->layout;
 u32 reg, reg_shift, value;
 unsigned long flags;
 int i;

 value = val ? hcg->layout->on[offset] : hcg->layout->off[offset];

 reg_shift = layout->shift[offset];
 for (i = 0; i < offset; i++)
  reg_shift += layout->bit_per_gpio[i] + layout->shift[i];

 spin_lock_irqsave(&hcg->lock, flags);
 reg = readl(hcg->regs);
 reg &= ~(GENMASK(layout->bit_per_gpio[i] - 1, 0) << reg_shift);
 reg |= (value << reg_shift);
 writel(reg, hcg->regs);
 spin_unlock_irqrestore(&hcg->lock, flags);
}
