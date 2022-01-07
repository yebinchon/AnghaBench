
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int pcidev; } ;


 int pci_free_irq (int ,int ,struct qib_devdata*) ;
 int pci_free_irq_vectors (int ) ;

void qib_free_irq(struct qib_devdata *dd)
{
 pci_free_irq(dd->pcidev, 0, dd);
 pci_free_irq_vectors(dd->pcidev);
}
