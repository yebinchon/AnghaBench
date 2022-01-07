
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int EINVAL ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 unsigned int IRQ_TYPE_NONE ;
 unsigned long irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static int dio48e_irq_set_type(struct irq_data *data, unsigned flow_type)
{
 const unsigned long offset = irqd_to_hwirq(data);


 if (offset != 19 && offset != 43)
  return -EINVAL;

 if (flow_type != IRQ_TYPE_NONE && flow_type != IRQ_TYPE_EDGE_RISING)
  return -EINVAL;

 return 0;
}
