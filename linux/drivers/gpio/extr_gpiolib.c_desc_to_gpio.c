
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_desc {TYPE_1__* gdev; } ;
struct TYPE_2__ {int base; struct gpio_desc const* descs; } ;



int desc_to_gpio(const struct gpio_desc *desc)
{
 return desc->gdev->base + (desc - &desc->gdev->descs[0]);
}
