
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int hwirq; } ;


 int BIT (int) ;
 int EINVAL ;
 int IRQS_PER_BANK ;




__attribute__((used)) static int stm32_exti_set_type(struct irq_data *d,
          unsigned int type, u32 *rtsr, u32 *ftsr)
{
 u32 mask = BIT(d->hwirq % IRQS_PER_BANK);

 switch (type) {
 case 128:
  *rtsr |= mask;
  *ftsr &= ~mask;
  break;
 case 129:
  *rtsr &= ~mask;
  *ftsr |= mask;
  break;
 case 130:
  *rtsr |= mask;
  *ftsr |= mask;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
