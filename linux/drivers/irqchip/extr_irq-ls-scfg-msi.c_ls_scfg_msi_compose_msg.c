
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_msg {int data; int address_lo; int address_hi; } ;
struct ls_scfg_msi {int msiir_addr; } ;
struct irq_data {int hwirq; } ;
struct cpumask {int dummy; } ;


 int cpumask_first (struct cpumask const*) ;
 int iommu_dma_compose_msi_msg (int ,struct msi_msg*) ;
 struct cpumask* irq_data_get_effective_affinity_mask (struct irq_data*) ;
 struct ls_scfg_msi* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_data_get_msi_desc (struct irq_data*) ;
 int lower_32_bits (int ) ;
 scalar_t__ msi_affinity_flag ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void ls_scfg_msi_compose_msg(struct irq_data *data, struct msi_msg *msg)
{
 struct ls_scfg_msi *msi_data = irq_data_get_irq_chip_data(data);

 msg->address_hi = upper_32_bits(msi_data->msiir_addr);
 msg->address_lo = lower_32_bits(msi_data->msiir_addr);
 msg->data = data->hwirq;

 if (msi_affinity_flag) {
  const struct cpumask *mask;

  mask = irq_data_get_effective_affinity_mask(data);
  msg->data |= cpumask_first(mask);
 }

 iommu_dma_compose_msi_msg(irq_data_get_msi_desc(data), msg);
}
