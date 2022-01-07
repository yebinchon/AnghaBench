
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;


 int gpiod_free (struct gpio_desc*) ;

void gpiod_put(struct gpio_desc *desc)
{
 if (desc)
  gpiod_free(desc);
}
