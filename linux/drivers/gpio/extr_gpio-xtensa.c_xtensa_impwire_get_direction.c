
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;



__attribute__((used)) static int xtensa_impwire_get_direction(struct gpio_chip *gc, unsigned offset)
{
 return 1;
}
