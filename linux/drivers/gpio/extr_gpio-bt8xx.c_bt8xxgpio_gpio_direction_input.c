
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {int dummy; } ;
struct bt8xxgpio {int lock; } ;


 int BT848_GPIO_DATA ;
 int BT848_GPIO_OUT_EN ;
 int bgread (int ) ;
 int bgwrite (int,int ) ;
 struct bt8xxgpio* gpiochip_get_data (struct gpio_chip*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int bt8xxgpio_gpio_direction_input(struct gpio_chip *gpio, unsigned nr)
{
 struct bt8xxgpio *bg = gpiochip_get_data(gpio);
 unsigned long flags;
 u32 outen, data;

 spin_lock_irqsave(&bg->lock, flags);

 data = bgread(BT848_GPIO_DATA);
 data &= ~(1 << nr);
 bgwrite(data, BT848_GPIO_DATA);

 outen = bgread(BT848_GPIO_OUT_EN);
 outen &= ~(1 << nr);
 bgwrite(outen, BT848_GPIO_OUT_EN);

 spin_unlock_irqrestore(&bg->lock, flags);

 return 0;
}
