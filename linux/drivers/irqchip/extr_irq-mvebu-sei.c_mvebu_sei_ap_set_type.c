
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int EINVAL ;
 unsigned int IRQ_TYPE_LEVEL_HIGH ;
 unsigned int IRQ_TYPE_SENSE_MASK ;

__attribute__((used)) static int mvebu_sei_ap_set_type(struct irq_data *data, unsigned int type)
{
 if ((type & IRQ_TYPE_SENSE_MASK) != IRQ_TYPE_LEVEL_HIGH)
  return -EINVAL;

 return 0;
}
