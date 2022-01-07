
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int gw_pld_output8 (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static void gw_pld_set8(struct gpio_chip *gc, unsigned offset, int value)
{
 gw_pld_output8(gc, offset, value);
}
