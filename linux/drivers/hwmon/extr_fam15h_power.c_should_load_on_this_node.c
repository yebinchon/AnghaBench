
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int devfn; int bus; } ;


 int BIT (int) ;
 int PCI_DEVFN (int ,int) ;
 int PCI_SLOT (int ) ;
 int REG_NORTHBRIDGE_CAP ;
 int pci_bus_read_config_dword (int ,int ,int ,int*) ;

__attribute__((used)) static bool should_load_on_this_node(struct pci_dev *f4)
{
 u32 val;

 pci_bus_read_config_dword(f4->bus, PCI_DEVFN(PCI_SLOT(f4->devfn), 3),
      REG_NORTHBRIDGE_CAP, &val);
 if ((val & BIT(29)) && ((val >> 30) & 3))
  return 0;

 return 1;
}
