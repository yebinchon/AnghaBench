
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int devfn; } ;


 unsigned int PCI_FUNC (int ) ;
 struct pci_dev* pci_get_device (unsigned int,unsigned int,struct pci_dev*) ;

__attribute__((used)) static struct pci_dev *pci_get_device_func(unsigned vendor,
        unsigned device,
        unsigned func)
{
 struct pci_dev *ret = ((void*)0);

 while (1) {
  ret = pci_get_device(vendor, device, ret);

  if (!ret)
   break;

  if (PCI_FUNC(ret->devfn) == func)
   break;
 }

 return ret;
}
