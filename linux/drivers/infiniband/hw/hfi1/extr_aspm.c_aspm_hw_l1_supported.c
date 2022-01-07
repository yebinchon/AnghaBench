
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {TYPE_1__* bus; } ;
struct hfi1_devdata {struct pci_dev* pcidev; } ;
struct TYPE_2__ {struct pci_dev* self; } ;


 int ASPM_L1_SUPPORTED (int ) ;
 int PCI_EXP_LNKCAP ;
 scalar_t__ is_ax (struct hfi1_devdata*) ;
 int pcie_capability_read_dword (struct pci_dev*,int ,int *) ;

__attribute__((used)) static bool aspm_hw_l1_supported(struct hfi1_devdata *dd)
{
 struct pci_dev *parent = dd->pcidev->bus->self;
 u32 up, dn;





 if (!parent)
  return 0;

 pcie_capability_read_dword(dd->pcidev, PCI_EXP_LNKCAP, &dn);
 dn = ASPM_L1_SUPPORTED(dn);

 pcie_capability_read_dword(parent, PCI_EXP_LNKCAP, &up);
 up = ASPM_L1_SUPPORTED(up);


 return (!!dn || is_ax(dd)) && !!up;
}
