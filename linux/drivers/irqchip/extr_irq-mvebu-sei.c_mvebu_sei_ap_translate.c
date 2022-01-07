
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_fwspec {unsigned long* param; } ;
struct irq_domain {int dummy; } ;


 unsigned int IRQ_TYPE_LEVEL_HIGH ;

__attribute__((used)) static int mvebu_sei_ap_translate(struct irq_domain *domain,
      struct irq_fwspec *fwspec,
      unsigned long *hwirq,
      unsigned int *type)
{
 *hwirq = fwspec->param[0];
 *type = IRQ_TYPE_LEVEL_HIGH;

 return 0;
}
