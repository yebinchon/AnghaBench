
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int EINVAL ;
 unsigned int IRQF_TRIGGER_MASK ;
 int IRQ_SET_MASK_OK ;
 unsigned int IRQ_TYPE_EDGE_BOTH ;
 int irqd_set_trigger_type (struct irq_data*,unsigned int) ;
 int pr_err (char*) ;

__attribute__((used)) static int tb10x_gpio_irq_set_type(struct irq_data *data, unsigned int type)
{
 if ((type & IRQF_TRIGGER_MASK) != IRQ_TYPE_EDGE_BOTH) {
  pr_err("Only (both) edge triggered interrupts supported.\n");
  return -EINVAL;
 }

 irqd_set_trigger_type(data, type);

 return IRQ_SET_MASK_OK;
}
