
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
 int PCI_EXP_LNKCTL_ASPM_L1 ;
 int pcie_capability_clear_and_set_word (struct pci_dev*,int ,int ,int ) ;

__attribute__((used)) static void aspm_hw_enable_l1(struct hfi1_devdata *dd)
{
 struct pci_dev *parent = dd->pcidev->bus->self;





 if (!parent)
  return;


 pcie_capability_clear_and_set_word(parent, PCI_EXP_LNKCTL,
        PCI_EXP_LNKCTL_ASPMC,
        PCI_EXP_LNKCTL_ASPM_L1);
 pcie_capability_clear_and_set_word(dd->pcidev, PCI_EXP_LNKCTL,
        PCI_EXP_LNKCTL_ASPMC,
        PCI_EXP_LNKCTL_ASPM_L1);
}
