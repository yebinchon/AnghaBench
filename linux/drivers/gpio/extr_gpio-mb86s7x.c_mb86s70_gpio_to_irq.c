
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int parent; } ;
struct TYPE_2__ {unsigned int hwirq; } ;


 int EINVAL ;
 TYPE_1__* irq_get_irq_data (int) ;
 int platform_get_irq (int ,int) ;
 int to_platform_device (int ) ;

__attribute__((used)) static int mb86s70_gpio_to_irq(struct gpio_chip *gc, unsigned int offset)
{
 int irq, index;

 for (index = 0;; index++) {
  irq = platform_get_irq(to_platform_device(gc->parent), index);
  if (irq <= 0)
   break;
  if (irq_get_irq_data(irq)->hwirq == offset)
   return irq;
 }
 return -EINVAL;
}
