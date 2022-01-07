
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int class; scalar_t__ devfn; int bus; } ;


 int ENODEV ;
 int PCI_CLASS_STORAGE_IDE ;
 int PCI_FUNC (scalar_t__) ;
 int cy82c693_chipset ;
 int ide_pci_init_two (struct pci_dev*,struct pci_dev*,int *,int *) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_slot (int ,scalar_t__) ;

__attribute__((used)) static int cy82c693_init_one(struct pci_dev *dev,
        const struct pci_device_id *id)
{
 struct pci_dev *dev2;
 int ret = -ENODEV;



 if ((dev->class >> 8) == PCI_CLASS_STORAGE_IDE &&
     PCI_FUNC(dev->devfn) == 1) {
  dev2 = pci_get_slot(dev->bus, dev->devfn + 1);
  ret = ide_pci_init_two(dev, dev2, &cy82c693_chipset, ((void*)0));
  if (ret)
   pci_dev_put(dev2);
 }
 return ret;
}
