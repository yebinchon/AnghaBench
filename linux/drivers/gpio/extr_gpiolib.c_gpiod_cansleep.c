
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gpio_desc {TYPE_2__* gdev; } ;
struct TYPE_4__ {TYPE_1__* chip; } ;
struct TYPE_3__ {int can_sleep; } ;


 int VALIDATE_DESC (struct gpio_desc const*) ;

int gpiod_cansleep(const struct gpio_desc *desc)
{
 VALIDATE_DESC(desc);
 return desc->gdev->chip->can_sleep;
}
