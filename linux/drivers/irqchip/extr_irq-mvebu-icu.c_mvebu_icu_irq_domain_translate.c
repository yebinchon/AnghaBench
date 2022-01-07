
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvebu_icu_msi_data {TYPE_1__* subset_data; } ;
struct mvebu_icu {int dev; } ;
struct irq_fwspec {unsigned int param_count; unsigned long* param; } ;
struct irq_domain {int dummy; } ;
struct TYPE_2__ {scalar_t__ icu_group; } ;


 int EINVAL ;
 unsigned int ICU_GRP_NSR ;
 scalar_t__ ICU_GRP_SEI ;
 unsigned long ICU_MAX_IRQS ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 unsigned int IRQ_TYPE_SENSE_MASK ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (int ,char*,unsigned long) ;
 int legacy_bindings ;
 void* platform_msi_get_host_data (struct irq_domain*) ;
 scalar_t__ static_branch_unlikely (int *) ;

__attribute__((used)) static int
mvebu_icu_irq_domain_translate(struct irq_domain *d, struct irq_fwspec *fwspec,
          unsigned long *hwirq, unsigned int *type)
{
 struct mvebu_icu_msi_data *msi_data = platform_msi_get_host_data(d);
 struct mvebu_icu *icu = platform_msi_get_host_data(d);
 unsigned int param_count = static_branch_unlikely(&legacy_bindings) ? 3 : 2;


 if (WARN_ON(fwspec->param_count != param_count)) {
  dev_err(icu->dev, "wrong ICU parameter count %d\n",
   fwspec->param_count);
  return -EINVAL;
 }

 if (static_branch_unlikely(&legacy_bindings)) {
  *hwirq = fwspec->param[1];
  *type = fwspec->param[2] & IRQ_TYPE_SENSE_MASK;
  if (fwspec->param[0] != ICU_GRP_NSR) {
   dev_err(icu->dev, "wrong ICU group type %x\n",
    fwspec->param[0]);
   return -EINVAL;
  }
 } else {
  *hwirq = fwspec->param[0];
  *type = fwspec->param[1] & IRQ_TYPE_SENSE_MASK;







  if (msi_data->subset_data->icu_group == ICU_GRP_SEI)
   *type = IRQ_TYPE_EDGE_RISING;
 }

 if (*hwirq >= ICU_MAX_IRQS) {
  dev_err(icu->dev, "invalid interrupt number %ld\n", *hwirq);
  return -EINVAL;
 }

 return 0;
}
