
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int EINVAL ;
 unsigned int IRQ_TYPE_LEVEL_HIGH ;

__attribute__((used)) static int ixp4xx_gpio_child_to_parent_hwirq(struct gpio_chip *gc,
          unsigned int child,
          unsigned int child_type,
          unsigned int *parent,
          unsigned int *parent_type)
{

 *parent_type = IRQ_TYPE_LEVEL_HIGH;


 if (child == 0) {
  *parent = 6;
  return 0;
 }
 if (child == 1) {
  *parent = 7;
  return 0;
 }
 if (child >= 2 && child <= 12) {
  *parent = child + 17;
  return 0;
 }
 return -EINVAL;
}
