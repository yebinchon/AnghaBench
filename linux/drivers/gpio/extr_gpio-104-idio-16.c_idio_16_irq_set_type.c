
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int EINVAL ;
 unsigned int IRQ_TYPE_EDGE_BOTH ;
 unsigned int IRQ_TYPE_NONE ;

__attribute__((used)) static int idio_16_irq_set_type(struct irq_data *data, unsigned flow_type)
{

 if (flow_type != IRQ_TYPE_NONE &&
  (flow_type & IRQ_TYPE_EDGE_BOTH) != IRQ_TYPE_EDGE_BOTH)
  return -EINVAL;

 return 0;
}
