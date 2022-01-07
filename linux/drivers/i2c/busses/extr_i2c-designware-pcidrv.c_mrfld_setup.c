
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int devfn; } ;
struct dw_pci_controller {int bus_num; } ;


 int ENODEV ;
 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;

__attribute__((used)) static int mrfld_setup(struct pci_dev *pdev, struct dw_pci_controller *c)
{






 switch (PCI_SLOT(pdev->devfn)) {
 case 8:
  c->bus_num = PCI_FUNC(pdev->devfn) + 0 + 1;
  return 0;
 case 9:
  c->bus_num = PCI_FUNC(pdev->devfn) + 4 + 1;
  return 0;
 }
 return -ENODEV;
}
