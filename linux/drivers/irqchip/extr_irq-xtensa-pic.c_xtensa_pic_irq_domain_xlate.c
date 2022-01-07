
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;


 int xtensa_irq_domain_xlate (int const*,unsigned int,int const,int const,unsigned long*,unsigned int*) ;

__attribute__((used)) static int xtensa_pic_irq_domain_xlate(struct irq_domain *d,
  struct device_node *ctrlr,
  const u32 *intspec, unsigned int intsize,
  unsigned long *out_hwirq, unsigned int *out_type)
{
 return xtensa_irq_domain_xlate(intspec, intsize,
   intspec[0], intspec[0],
   out_hwirq, out_type);
}
