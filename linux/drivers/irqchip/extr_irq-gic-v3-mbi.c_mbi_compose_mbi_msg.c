
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msi_msg {int data; int address_lo; int address_hi; } ;
struct irq_data {TYPE_1__* parent_data; } ;
struct TYPE_2__ {int hwirq; } ;


 scalar_t__ GICD_CLRSPI_NSR ;
 int iommu_dma_compose_msi_msg (int ,struct msi_msg*) ;
 int irq_data_get_msi_desc (struct irq_data*) ;
 int lower_32_bits (scalar_t__) ;
 int mbi_compose_msi_msg (struct irq_data*,struct msi_msg*) ;
 scalar_t__ mbi_phys_base ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static void mbi_compose_mbi_msg(struct irq_data *data, struct msi_msg *msg)
{
 mbi_compose_msi_msg(data, msg);

 msg[1].address_hi = upper_32_bits(mbi_phys_base + GICD_CLRSPI_NSR);
 msg[1].address_lo = lower_32_bits(mbi_phys_base + GICD_CLRSPI_NSR);
 msg[1].data = data->parent_data->hwirq;

 iommu_dma_compose_msi_msg(irq_data_get_msi_desc(data), &msg[1]);
}
