
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_gpio_chip {scalar_t__ reg_base; } ;
struct gpio_chip {int bgpio_lock; int parent; } ;


 int BIT (unsigned int) ;
 int EINVAL ;
 scalar_t__ PT_SYNC_REG ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_warn (int ,char*,unsigned int) ;
 struct pt_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int pt_gpio_request(struct gpio_chip *gc, unsigned offset)
{
 struct pt_gpio_chip *pt_gpio = gpiochip_get_data(gc);
 unsigned long flags;
 u32 using_pins;

 dev_dbg(gc->parent, "pt_gpio_request offset=%x\n", offset);

 spin_lock_irqsave(&gc->bgpio_lock, flags);

 using_pins = readl(pt_gpio->reg_base + PT_SYNC_REG);
 if (using_pins & BIT(offset)) {
  dev_warn(gc->parent, "PT GPIO pin %x reconfigured\n",
    offset);
  spin_unlock_irqrestore(&gc->bgpio_lock, flags);
  return -EINVAL;
 }

 writel(using_pins | BIT(offset), pt_gpio->reg_base + PT_SYNC_REG);

 spin_unlock_irqrestore(&gc->bgpio_lock, flags);

 return 0;
}
