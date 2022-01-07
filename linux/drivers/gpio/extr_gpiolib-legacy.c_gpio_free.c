
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gpio_to_desc (unsigned int) ;
 int gpiod_free (int ) ;

void gpio_free(unsigned gpio)
{
 gpiod_free(gpio_to_desc(gpio));
}
