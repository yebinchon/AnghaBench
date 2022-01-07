
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int irq_chip_mask_parent (struct irq_data*) ;
 int pci_msi_mask_irq (struct irq_data*) ;

__attribute__((used)) static void its_mask_msi_irq(struct irq_data *d)
{
 pci_msi_mask_irq(d);
 irq_chip_mask_parent(d);
}
