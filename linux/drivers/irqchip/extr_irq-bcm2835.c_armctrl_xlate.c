
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 scalar_t__ const IRQS_PER_BANK ;
 unsigned int IRQ_TYPE_NONE ;
 unsigned long MAKE_HWIRQ (scalar_t__ const,scalar_t__ const) ;
 scalar_t__ const NR_BANKS ;
 scalar_t__ const NR_IRQS_BANK0 ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int armctrl_xlate(struct irq_domain *d, struct device_node *ctrlr,
 const u32 *intspec, unsigned int intsize,
 unsigned long *out_hwirq, unsigned int *out_type)
{
 if (WARN_ON(intsize != 2))
  return -EINVAL;

 if (WARN_ON(intspec[0] >= NR_BANKS))
  return -EINVAL;

 if (WARN_ON(intspec[1] >= IRQS_PER_BANK))
  return -EINVAL;

 if (WARN_ON(intspec[0] == 0 && intspec[1] >= NR_IRQS_BANK0))
  return -EINVAL;

 *out_hwirq = MAKE_HWIRQ(intspec[0], intspec[1]);
 *out_type = IRQ_TYPE_NONE;
 return 0;
}
