
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int EINVAL ;


 unsigned int IRQ_TYPE_SENSE_MASK ;
 int handle_level_irq ;
 int irq_set_handler_locked (struct irq_data*,int ) ;

__attribute__((used)) static int ti_sci_inta_set_type(struct irq_data *data, unsigned int type)
{




 switch (type & IRQ_TYPE_SENSE_MASK) {
 case 129:
  irq_set_handler_locked(data, handle_level_irq);
  return 0;
 case 128:
  return 0;
 default:
  return -EINVAL;
 }

 return -EINVAL;
}
