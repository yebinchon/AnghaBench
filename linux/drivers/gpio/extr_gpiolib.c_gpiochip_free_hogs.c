
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gpio_chip {int ngpio; TYPE_1__* gpiodev; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {TYPE_2__* descs; } ;


 int FLAG_IS_HOGGED ;
 int gpiochip_free_own_desc (TYPE_2__*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void gpiochip_free_hogs(struct gpio_chip *chip)
{
 int id;

 for (id = 0; id < chip->ngpio; id++) {
  if (test_bit(FLAG_IS_HOGGED, &chip->gpiodev->descs[id].flags))
   gpiochip_free_own_desc(&chip->gpiodev->descs[id]);
 }
}
