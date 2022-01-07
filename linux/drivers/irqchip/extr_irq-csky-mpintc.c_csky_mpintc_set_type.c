
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {size_t hwirq; } ;


 int EINVAL ;




 unsigned int IRQ_TYPE_SENSE_MASK ;
 int* __trigger ;

__attribute__((used)) static int csky_mpintc_set_type(struct irq_data *d, unsigned int type)
{
 switch (type & IRQ_TYPE_SENSE_MASK) {
 case 129:
  __trigger[d->hwirq] = 0;
  break;
 case 128:
  __trigger[d->hwirq] = 1;
  break;
 case 130:
  __trigger[d->hwirq] = 2;
  break;
 case 131:
  __trigger[d->hwirq] = 3;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
