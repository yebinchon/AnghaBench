
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int dummy; } ;
struct gpio_chip {int dummy; } ;


 struct gpio_chip* gpiochip_find (struct of_phandle_args*,int ) ;
 int of_gpiochip_match_node_and_xlate ;

__attribute__((used)) static struct gpio_chip *of_find_gpiochip_by_xlate(
     struct of_phandle_args *gpiospec)
{
 return gpiochip_find(gpiospec, of_gpiochip_match_node_and_xlate);
}
