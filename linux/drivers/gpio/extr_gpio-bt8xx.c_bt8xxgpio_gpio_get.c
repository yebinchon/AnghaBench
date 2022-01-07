
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {int dummy; } ;
struct bt8xxgpio {int lock; } ;


 int BT848_GPIO_DATA ;
 int bgread (int ) ;
 struct bt8xxgpio* gpiochip_get_data (struct gpio_chip*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int bt8xxgpio_gpio_get(struct gpio_chip *gpio, unsigned nr)
{
 struct bt8xxgpio *bg = gpiochip_get_data(gpio);
 unsigned long flags;
 u32 val;

 spin_lock_irqsave(&bg->lock, flags);
 val = bgread(BT848_GPIO_DATA);
 spin_unlock_irqrestore(&bg->lock, flags);

 return !!(val & (1 << nr));
}
