
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct cs5535_gpio_chip {int lock; } ;


 int GPIO_INPUT_ENABLE ;
 int GPIO_OUTPUT_ENABLE ;
 int GPIO_OUTPUT_VAL ;
 int __cs5535_gpio_clear (struct cs5535_gpio_chip*,unsigned int,int ) ;
 int __cs5535_gpio_set (struct cs5535_gpio_chip*,unsigned int,int ) ;
 struct cs5535_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int chip_direction_output(struct gpio_chip *c, unsigned offset, int val)
{
 struct cs5535_gpio_chip *chip = gpiochip_get_data(c);
 unsigned long flags;

 spin_lock_irqsave(&chip->lock, flags);

 __cs5535_gpio_set(chip, offset, GPIO_INPUT_ENABLE);
 __cs5535_gpio_set(chip, offset, GPIO_OUTPUT_ENABLE);
 if (val)
  __cs5535_gpio_set(chip, offset, GPIO_OUTPUT_VAL);
 else
  __cs5535_gpio_clear(chip, offset, GPIO_OUTPUT_VAL);

 spin_unlock_irqrestore(&chip->lock, flags);

 return 0;
}
