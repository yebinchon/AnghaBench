
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int valid_mask; scalar_t__ init_valid_mask; } ;


 int ENOMEM ;
 int gpiochip_allocate_mask (struct gpio_chip*) ;
 scalar_t__ of_gpio_need_valid_mask (struct gpio_chip*) ;

__attribute__((used)) static int gpiochip_alloc_valid_mask(struct gpio_chip *gc)
{
 if (!(of_gpio_need_valid_mask(gc) || gc->init_valid_mask))
  return 0;

 gc->valid_mask = gpiochip_allocate_mask(gc);
 if (!gc->valid_mask)
  return -ENOMEM;

 return 0;
}
