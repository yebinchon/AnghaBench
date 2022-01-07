
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct irq_data {int hwirq; } ;
struct TYPE_3__ {int parent; } ;


 int dev_err (int ,char*,int ) ;
 int gpiochip_lock_as_irq (TYPE_1__*,int ) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int unmask_giuint_low (struct irq_data*) ;
 TYPE_1__ vr41xx_gpio_chip ;

__attribute__((used)) static unsigned int startup_giuint(struct irq_data *data)
{
 int ret;

 ret = gpiochip_lock_as_irq(&vr41xx_gpio_chip, irqd_to_hwirq(data));
 if (ret) {
  dev_err(vr41xx_gpio_chip.parent,
   "unable to lock HW IRQ %lu for IRQ\n",
   data->hwirq);
  return ret;
 }


 unmask_giuint_low(data);
 return 0;
}
