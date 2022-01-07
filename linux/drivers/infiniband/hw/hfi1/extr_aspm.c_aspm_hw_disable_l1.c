
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* bus; } ;
struct hfi1_devdata {struct pci_dev* pcidev; } ;
struct TYPE_2__ {struct pci_dev* self; } ;


 int PCI_EXP_LNKCTL ;
 int PCI_EXP_LNKCTL_ASPMC ;
 int pcie_capability_clear_and_set_word (struct pci_dev*,int ,int ,int) ;

void aspm_hw_disable_l1(struct hfi1_devdata *dd)
{
 struct pci_dev *parent = dd->pcidev->bus->self;


 pcie_capability_clear_and_set_word(dd->pcidev, PCI_EXP_LNKCTL,
        PCI_EXP_LNKCTL_ASPMC, 0x0);
 if (parent)
  pcie_capability_clear_and_set_word(parent, PCI_EXP_LNKCTL,
         PCI_EXP_LNKCTL_ASPMC, 0x0);
}
