
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int ltq_mm_set (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int ltq_mm_dir_out(struct gpio_chip *gc, unsigned offset, int value)
{
 ltq_mm_set(gc, offset, value);

 return 0;
}
