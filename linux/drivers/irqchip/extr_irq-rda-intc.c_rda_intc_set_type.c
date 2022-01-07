
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int EINVAL ;
 unsigned int IRQF_TRIGGER_HIGH ;
 unsigned int IRQF_TRIGGER_LOW ;

__attribute__((used)) static int rda_intc_set_type(struct irq_data *data, unsigned int flow_type)
{

 if ((flow_type & (IRQF_TRIGGER_HIGH | IRQF_TRIGGER_LOW)) == flow_type)
  return 0;

 return -EINVAL;
}
