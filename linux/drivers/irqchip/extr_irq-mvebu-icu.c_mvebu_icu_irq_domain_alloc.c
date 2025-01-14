
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvebu_icu_msi_data {TYPE_1__* subset_data; struct mvebu_icu* icu; } ;
struct mvebu_icu_irq_data {scalar_t__ icu_group; struct mvebu_icu* icu; int type; } ;
struct mvebu_icu {int dev; } ;
struct irq_fwspec {scalar_t__* param; } ;
struct irq_domain {int dummy; } ;
struct irq_chip {int dummy; } ;
struct TYPE_2__ {scalar_t__ icu_group; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ ICU_GRP_SEI ;
 int IRQCHIP_STATE_PENDING ;
 int dev_err (int ,char*) ;
 int irq_domain_set_hwirq_and_chip (struct irq_domain*,unsigned int,unsigned long,struct irq_chip*,struct mvebu_icu_irq_data*) ;
 int irq_set_irqchip_state (unsigned int,int ,int) ;
 int kfree (struct mvebu_icu_irq_data*) ;
 struct mvebu_icu_irq_data* kmalloc (int,int ) ;
 int legacy_bindings ;
 int mvebu_icu_irq_domain_translate (struct irq_domain*,struct irq_fwspec*,unsigned long*,int *) ;
 struct irq_chip mvebu_icu_nsr_chip ;
 struct irq_chip mvebu_icu_sei_chip ;
 int platform_msi_domain_alloc (struct irq_domain*,unsigned int,unsigned int) ;
 int platform_msi_domain_free (struct irq_domain*,unsigned int,unsigned int) ;
 struct mvebu_icu_msi_data* platform_msi_get_host_data (struct irq_domain*) ;
 scalar_t__ static_branch_unlikely (int *) ;

__attribute__((used)) static int
mvebu_icu_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
      unsigned int nr_irqs, void *args)
{
 int err;
 unsigned long hwirq;
 struct irq_fwspec *fwspec = args;
 struct mvebu_icu_msi_data *msi_data = platform_msi_get_host_data(domain);
 struct mvebu_icu *icu = msi_data->icu;
 struct mvebu_icu_irq_data *icu_irqd;
 struct irq_chip *chip = &mvebu_icu_nsr_chip;

 icu_irqd = kmalloc(sizeof(*icu_irqd), GFP_KERNEL);
 if (!icu_irqd)
  return -ENOMEM;

 err = mvebu_icu_irq_domain_translate(domain, fwspec, &hwirq,
          &icu_irqd->type);
 if (err) {
  dev_err(icu->dev, "failed to translate ICU parameters\n");
  goto free_irqd;
 }

 if (static_branch_unlikely(&legacy_bindings))
  icu_irqd->icu_group = fwspec->param[0];
 else
  icu_irqd->icu_group = msi_data->subset_data->icu_group;
 icu_irqd->icu = icu;

 err = platform_msi_domain_alloc(domain, virq, nr_irqs);
 if (err) {
  dev_err(icu->dev, "failed to allocate ICU interrupt in parent domain\n");
  goto free_irqd;
 }


 err = irq_set_irqchip_state(virq, IRQCHIP_STATE_PENDING, 0);
 if (err)
  goto free_msi;

 if (icu_irqd->icu_group == ICU_GRP_SEI)
  chip = &mvebu_icu_sei_chip;

 err = irq_domain_set_hwirq_and_chip(domain, virq, hwirq,
         chip, icu_irqd);
 if (err) {
  dev_err(icu->dev, "failed to set the data to IRQ domain\n");
  goto free_msi;
 }

 return 0;

free_msi:
 platform_msi_domain_free(domain, virq, nr_irqs);
free_irqd:
 kfree(icu_irqd);
 return err;
}
