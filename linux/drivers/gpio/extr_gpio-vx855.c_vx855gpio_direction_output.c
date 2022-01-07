
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int EINVAL ;
 unsigned int NR_VX855_GPI ;
 int vx855gpio_set (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int vx855gpio_direction_output(struct gpio_chip *gpio,
          unsigned int nr, int val)
{

 if (nr < NR_VX855_GPI)
  return -EINVAL;




 vx855gpio_set(gpio, nr, val);

 return 0;
}
