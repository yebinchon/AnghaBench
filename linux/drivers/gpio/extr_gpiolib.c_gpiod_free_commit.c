
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_desc {int flags; int label; TYPE_1__* gdev; } ;
struct gpio_chip {int (* free ) (struct gpio_chip*,int ) ;int can_sleep; } ;
struct TYPE_2__ {struct gpio_chip* chip; } ;


 int FLAG_ACTIVE_LOW ;
 int FLAG_IS_HOGGED ;
 int FLAG_OPEN_DRAIN ;
 int FLAG_OPEN_SOURCE ;
 int FLAG_REQUESTED ;
 int clear_bit (int ,int *) ;
 int desc_set_label (struct gpio_desc*,int *) ;
 int gpio_chip_hwgpio (struct gpio_desc*) ;
 int gpio_lock ;
 int gpiod_unexport (struct gpio_desc*) ;
 int kfree_const (int ) ;
 int might_sleep () ;
 int might_sleep_if (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct gpio_chip*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool gpiod_free_commit(struct gpio_desc *desc)
{
 bool ret = 0;
 unsigned long flags;
 struct gpio_chip *chip;

 might_sleep();

 gpiod_unexport(desc);

 spin_lock_irqsave(&gpio_lock, flags);

 chip = desc->gdev->chip;
 if (chip && test_bit(FLAG_REQUESTED, &desc->flags)) {
  if (chip->free) {
   spin_unlock_irqrestore(&gpio_lock, flags);
   might_sleep_if(chip->can_sleep);
   chip->free(chip, gpio_chip_hwgpio(desc));
   spin_lock_irqsave(&gpio_lock, flags);
  }
  kfree_const(desc->label);
  desc_set_label(desc, ((void*)0));
  clear_bit(FLAG_ACTIVE_LOW, &desc->flags);
  clear_bit(FLAG_REQUESTED, &desc->flags);
  clear_bit(FLAG_OPEN_DRAIN, &desc->flags);
  clear_bit(FLAG_OPEN_SOURCE, &desc->flags);
  clear_bit(FLAG_IS_HOGGED, &desc->flags);
  ret = 1;
 }

 spin_unlock_irqrestore(&gpio_lock, flags);
 return ret;
}
