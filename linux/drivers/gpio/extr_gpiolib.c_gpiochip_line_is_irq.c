
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gpio_chip {unsigned int ngpio; TYPE_2__* gpiodev; } ;
struct TYPE_4__ {TYPE_1__* descs; } ;
struct TYPE_3__ {int flags; } ;


 int FLAG_USED_AS_IRQ ;
 int test_bit (int ,int *) ;

bool gpiochip_line_is_irq(struct gpio_chip *chip, unsigned int offset)
{
 if (offset >= chip->ngpio)
  return 0;

 return test_bit(FLAG_USED_AS_IRQ, &chip->gpiodev->descs[offset].flags);
}
