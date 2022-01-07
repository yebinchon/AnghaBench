
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {TYPE_1__* gpiodev; } ;
struct TYPE_2__ {void* data; } ;



void *gpiochip_get_data(struct gpio_chip *chip)
{
 return chip->gpiodev->data;
}
