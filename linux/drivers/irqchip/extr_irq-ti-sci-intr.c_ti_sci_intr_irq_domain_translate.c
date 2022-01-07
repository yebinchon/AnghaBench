
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sci_intr_irq_domain {unsigned int type; } ;
struct irq_fwspec {int param_count; int * param; } ;
struct irq_domain {struct ti_sci_intr_irq_domain* host_data; } ;


 int EINVAL ;
 unsigned long TO_HWIRQ (int ,int ) ;

__attribute__((used)) static int ti_sci_intr_irq_domain_translate(struct irq_domain *domain,
         struct irq_fwspec *fwspec,
         unsigned long *hwirq,
         unsigned int *type)
{
 struct ti_sci_intr_irq_domain *intr = domain->host_data;

 if (fwspec->param_count != 2)
  return -EINVAL;

 *hwirq = TO_HWIRQ(fwspec->param[0], fwspec->param[1]);
 *type = intr->type;

 return 0;
}
