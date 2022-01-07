
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sch311x_gpio_block {int lock; } ;
struct gpio_chip {int dummy; } ;


 int __sch311x_gpio_set (struct sch311x_gpio_block*,unsigned int,int) ;
 struct sch311x_gpio_block* gpiochip_get_data (struct gpio_chip*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void sch311x_gpio_set(struct gpio_chip *chip, unsigned offset,
        int value)
{
 struct sch311x_gpio_block *block = gpiochip_get_data(chip);

 spin_lock(&block->lock);
 __sch311x_gpio_set(block, offset, value);
 spin_unlock(&block->lock);
}
