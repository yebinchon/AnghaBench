
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int irq_chip_unmask_parent (struct irq_data*) ;
 int pci_msi_unmask_irq (struct irq_data*) ;

__attribute__((used)) static void gicv2m_unmask_msi_irq(struct irq_data *d)
{
 pci_msi_unmask_irq(d);
 irq_chip_unmask_parent(d);
}
