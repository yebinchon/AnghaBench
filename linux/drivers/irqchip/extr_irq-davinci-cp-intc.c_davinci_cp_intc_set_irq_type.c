
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 unsigned int BIT_MASK (int ) ;
 unsigned int BIT_WORD (int ) ;
 int DAVINCI_CP_INTC_SYS_POLARITY (unsigned int) ;
 int DAVINCI_CP_INTC_SYS_TYPE (unsigned int) ;
 int EINVAL ;




 unsigned int davinci_cp_intc_read (int ) ;
 int davinci_cp_intc_write (unsigned int,int ) ;

__attribute__((used)) static int davinci_cp_intc_set_irq_type(struct irq_data *d,
     unsigned int flow_type)
{
 unsigned int reg, mask, polarity, type;

 reg = BIT_WORD(d->hwirq);
 mask = BIT_MASK(d->hwirq);
 polarity = davinci_cp_intc_read(DAVINCI_CP_INTC_SYS_POLARITY(reg));
 type = davinci_cp_intc_read(DAVINCI_CP_INTC_SYS_TYPE(reg));

 switch (flow_type) {
 case 130:
  polarity |= mask;
  type |= mask;
  break;
 case 131:
  polarity &= ~mask;
  type |= mask;
  break;
 case 129:
  polarity |= mask;
  type &= ~mask;
  break;
 case 128:
  polarity &= ~mask;
  type &= ~mask;
  break;
 default:
  return -EINVAL;
 }

 davinci_cp_intc_write(polarity, DAVINCI_CP_INTC_SYS_POLARITY(reg));
 davinci_cp_intc_write(type, DAVINCI_CP_INTC_SYS_TYPE(reg));

 return 0;
}
