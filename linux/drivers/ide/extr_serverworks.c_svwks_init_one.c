
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct pci_device_id {size_t driver_data; } ;
struct pci_dev {int devfn; } ;
struct ide_port_info {int host_flags; } ;


 int IDE_HFLAG_CLEAR_SIMPLEX ;
 int IDE_HFLAG_NON_BOOTABLE ;
 int IDE_HFLAG_SINGLE ;
 int PCI_FUNC (int ) ;
 int ide_pci_init_one (struct pci_dev*,struct ide_port_info*,int *) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 struct ide_port_info* serverworks_chipsets ;

__attribute__((used)) static int svwks_init_one(struct pci_dev *dev, const struct pci_device_id *id)
{
 struct ide_port_info d;
 u8 idx = id->driver_data;

 d = serverworks_chipsets[idx];

 if (idx == 1)
  d.host_flags |= IDE_HFLAG_CLEAR_SIMPLEX;
 else if (idx == 2 || idx == 3) {
  if ((PCI_FUNC(dev->devfn) & 1) == 0) {
   if (pci_resource_start(dev, 0) != 0x01f1)
    d.host_flags |= IDE_HFLAG_NON_BOOTABLE;
   d.host_flags |= IDE_HFLAG_SINGLE;
  } else
   d.host_flags &= ~IDE_HFLAG_SINGLE;
 }

 return ide_pci_init_one(dev, &d, ((void*)0));
}
