
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxbig_gpio_ext {int num_addr; int * addr; } ;


 int gpio_set_value (int ,int) ;

__attribute__((used)) static void gpio_ext_set_addr(struct netxbig_gpio_ext *gpio_ext, int addr)
{
 int pin;

 for (pin = 0; pin < gpio_ext->num_addr; pin++)
  gpio_set_value(gpio_ext->addr[pin], (addr >> pin) & 1);
}
