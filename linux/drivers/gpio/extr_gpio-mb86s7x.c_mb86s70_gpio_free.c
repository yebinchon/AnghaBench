
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mb86s70_gpio_chip {int lock; scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;


 int OFFSET (unsigned int) ;
 scalar_t__ PFR (unsigned int) ;
 struct mb86s70_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mb86s70_gpio_free(struct gpio_chip *gc, unsigned gpio)
{
 struct mb86s70_gpio_chip *gchip = gpiochip_get_data(gc);
 unsigned long flags;
 u32 val;

 spin_lock_irqsave(&gchip->lock, flags);

 val = readl(gchip->base + PFR(gpio));
 val |= OFFSET(gpio);
 writel(val, gchip->base + PFR(gpio));

 spin_unlock_irqrestore(&gchip->lock, flags);
}
