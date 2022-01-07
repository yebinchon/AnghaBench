
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 struct gpio_chip* gpiochip_find (void*,int ) ;
 int gpiochip_match_name ;

__attribute__((used)) static struct gpio_chip *find_chip_by_name(const char *name)
{
 return gpiochip_find((void *)name, gpiochip_match_name);
}
