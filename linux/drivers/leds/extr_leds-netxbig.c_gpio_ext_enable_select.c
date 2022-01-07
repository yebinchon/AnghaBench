
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxbig_gpio_ext {int enable; } ;


 int gpio_set_value (int ,int) ;

__attribute__((used)) static void gpio_ext_enable_select(struct netxbig_gpio_ext *gpio_ext)
{

 gpio_set_value(gpio_ext->enable, 0);
 gpio_set_value(gpio_ext->enable, 1);
}
