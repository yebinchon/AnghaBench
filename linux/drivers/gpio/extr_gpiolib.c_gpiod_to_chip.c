
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_desc {TYPE_1__* gdev; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {struct gpio_chip* chip; } ;



struct gpio_chip *gpiod_to_chip(const struct gpio_desc *desc)
{
 if (!desc || !desc->gdev)
  return ((void*)0);
 return desc->gdev->chip;
}
