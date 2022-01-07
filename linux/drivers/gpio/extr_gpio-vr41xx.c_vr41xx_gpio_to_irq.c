
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned int ngpio; } ;


 int EINVAL ;
 int GIU_IRQ_BASE ;

__attribute__((used)) static int vr41xx_gpio_to_irq(struct gpio_chip *chip, unsigned offset)
{
 if (offset >= chip->ngpio)
  return -EINVAL;

 return GIU_IRQ_BASE + offset;
}
