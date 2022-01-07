
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwapb_gpio {unsigned int nr_ports; TYPE_1__* ports; } ;
struct TYPE_2__ {int gc; scalar_t__ is_registered; } ;


 int gpiochip_remove (int *) ;

__attribute__((used)) static void dwapb_gpio_unregister(struct dwapb_gpio *gpio)
{
 unsigned int m;

 for (m = 0; m < gpio->nr_ports; ++m)
  if (gpio->ports[m].is_registered)
   gpiochip_remove(&gpio->ports[m].gc);
}
