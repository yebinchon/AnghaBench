
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efa_dev {int pdev; } ;


 int pci_free_irq_vectors (int ) ;

__attribute__((used)) static void efa_disable_msix(struct efa_dev *dev)
{
 pci_free_irq_vectors(dev->pdev);
}
