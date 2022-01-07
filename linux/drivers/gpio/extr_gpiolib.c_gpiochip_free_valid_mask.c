
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int * valid_mask; } ;


 int bitmap_free (int *) ;

__attribute__((used)) static void gpiochip_free_valid_mask(struct gpio_chip *gpiochip)
{
 bitmap_free(gpiochip->valid_mask);
 gpiochip->valid_mask = ((void*)0);
}
