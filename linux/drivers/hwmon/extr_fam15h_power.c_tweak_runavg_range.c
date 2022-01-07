
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int devfn; int bus; } ;


 int PCI_DEVFN (int ,int) ;
 int PCI_SLOT (int ) ;
 int REG_TDP_RUNNING_AVERAGE ;
 int affected_device ;
 int pci_bus_read_config_dword (int ,int ,int ,int*) ;
 int pci_bus_write_config_dword (int ,int ,int ,int) ;
 int pci_match_id (int ,struct pci_dev*) ;

__attribute__((used)) static void tweak_runavg_range(struct pci_dev *pdev)
{
 u32 val;





 if (!pci_match_id(affected_device, pdev))
  return;

 pci_bus_read_config_dword(pdev->bus,
  PCI_DEVFN(PCI_SLOT(pdev->devfn), 5),
  REG_TDP_RUNNING_AVERAGE, &val);
 if ((val & 0xf) != 0xe)
  return;

 val &= ~0xf;
 val |= 0x9;
 pci_bus_write_config_dword(pdev->bus,
  PCI_DEVFN(PCI_SLOT(pdev->devfn), 5),
  REG_TDP_RUNNING_AVERAGE, val);
}
