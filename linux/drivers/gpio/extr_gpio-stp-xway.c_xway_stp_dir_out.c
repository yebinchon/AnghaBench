
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int xway_stp_set (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int xway_stp_dir_out(struct gpio_chip *gc, unsigned gpio, int val)
{
 xway_stp_set(gc, gpio, val);

 return 0;
}
