
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct cs5535_gpio_chip {int lock; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int GPIO_INPUT_AUX1 ;
 int GPIO_OUTPUT_AUX1 ;
 int GPIO_OUTPUT_AUX2 ;
 int __cs5535_gpio_clear (struct cs5535_gpio_chip*,unsigned int,int ) ;
 int dev_info (int *,char*,unsigned int) ;
 struct cs5535_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int mask ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int chip_gpio_request(struct gpio_chip *c, unsigned offset)
{
 struct cs5535_gpio_chip *chip = gpiochip_get_data(c);
 unsigned long flags;

 spin_lock_irqsave(&chip->lock, flags);


 if ((mask & (1 << offset)) == 0) {
  dev_info(&chip->pdev->dev,
   "pin %u is not available (check mask)\n", offset);
  spin_unlock_irqrestore(&chip->lock, flags);
  return -EINVAL;
 }


 __cs5535_gpio_clear(chip, offset, GPIO_OUTPUT_AUX1);
 __cs5535_gpio_clear(chip, offset, GPIO_OUTPUT_AUX2);


 __cs5535_gpio_clear(chip, offset, GPIO_INPUT_AUX1);

 spin_unlock_irqrestore(&chip->lock, flags);

 return 0;
}
