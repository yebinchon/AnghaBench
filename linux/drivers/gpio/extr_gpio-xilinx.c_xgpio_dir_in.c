
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgpio_instance {int * gpio_lock; int * gpio_dir; scalar_t__ regs; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int) ;
 scalar_t__ XGPIO_TRI_OFFSET ;
 struct xgpio_instance* gpiochip_get_data (struct gpio_chip*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xgpio_index (struct xgpio_instance*,unsigned int) ;
 int xgpio_offset (struct xgpio_instance*,unsigned int) ;
 scalar_t__ xgpio_regoffset (struct xgpio_instance*,unsigned int) ;
 int xgpio_writereg (scalar_t__,int ) ;

__attribute__((used)) static int xgpio_dir_in(struct gpio_chip *gc, unsigned int gpio)
{
 unsigned long flags;
 struct xgpio_instance *chip = gpiochip_get_data(gc);
 int index = xgpio_index(chip, gpio);
 int offset = xgpio_offset(chip, gpio);

 spin_lock_irqsave(&chip->gpio_lock[index], flags);


 chip->gpio_dir[index] |= BIT(offset);
 xgpio_writereg(chip->regs + XGPIO_TRI_OFFSET +
         xgpio_regoffset(chip, gpio), chip->gpio_dir[index]);

 spin_unlock_irqrestore(&chip->gpio_lock[index], flags);

 return 0;
}
