
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int class; } ;


 int ENODEV ;
 int PCI_CLASS_STORAGE_IDE ;
 int ide_pci_init_one (struct pci_dev*,int *,int *) ;
 int it8172_port_info ;

__attribute__((used)) static int it8172_init_one(struct pci_dev *dev, const struct pci_device_id *id)
{
 if ((dev->class >> 8) != PCI_CLASS_STORAGE_IDE)
  return -ENODEV;
 return ide_pci_init_one(dev, &it8172_port_info, ((void*)0));
}
