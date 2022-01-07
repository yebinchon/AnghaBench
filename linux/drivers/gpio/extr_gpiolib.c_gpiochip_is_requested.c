
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_desc {char const* label; int flags; } ;
struct gpio_chip {unsigned int ngpio; TYPE_1__* gpiodev; } ;
struct TYPE_2__ {struct gpio_desc* descs; } ;


 int FLAG_REQUESTED ;
 scalar_t__ test_bit (int ,int *) ;

const char *gpiochip_is_requested(struct gpio_chip *chip, unsigned offset)
{
 struct gpio_desc *desc;

 if (offset >= chip->ngpio)
  return ((void*)0);

 desc = &chip->gpiodev->descs[offset];

 if (test_bit(FLAG_REQUESTED, &desc->flags) == 0)
  return ((void*)0);
 return desc->label;
}
