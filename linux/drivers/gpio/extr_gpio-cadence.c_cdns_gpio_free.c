
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int bgpio_lock; } ;
struct cdns_gpio_chip {int bypass_orig; scalar_t__ regs; } ;


 int BIT (unsigned int) ;
 scalar_t__ CDNS_GPIO_BYPASS_MODE ;
 struct cdns_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cdns_gpio_free(struct gpio_chip *chip, unsigned int offset)
{
 struct cdns_gpio_chip *cgpio = gpiochip_get_data(chip);
 unsigned long flags;

 spin_lock_irqsave(&chip->bgpio_lock, flags);

 iowrite32(ioread32(cgpio->regs + CDNS_GPIO_BYPASS_MODE) |
    (BIT(offset) & cgpio->bypass_orig),
    cgpio->regs + CDNS_GPIO_BYPASS_MODE);

 spin_unlock_irqrestore(&chip->bgpio_lock, flags);
}
