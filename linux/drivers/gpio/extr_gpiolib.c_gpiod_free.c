
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_desc {TYPE_1__* gdev; } ;
struct TYPE_2__ {int dev; int owner; } ;


 int WARN_ON (int ) ;
 int extra_checks ;
 scalar_t__ gpiod_free_commit (struct gpio_desc*) ;
 int module_put (int ) ;
 int put_device (int *) ;

void gpiod_free(struct gpio_desc *desc)
{
 if (desc && desc->gdev && gpiod_free_commit(desc)) {
  module_put(desc->gdev->owner);
  put_device(&desc->gdev->dev);
 } else {
  WARN_ON(extra_checks);
 }
}
