
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {scalar_t__ number; } ;


 scalar_t__ PCI_SLOT (int ) ;
 scalar_t__ pci_domain_nr (TYPE_1__*) ;
 struct pci_dev* pci_get_device (unsigned int,unsigned int,struct pci_dev*) ;

__attribute__((used)) static struct pci_dev *pci_get_related_function(unsigned int vendor,
      unsigned int device,
      struct pci_dev *related)
{
 struct pci_dev *dev = ((void*)0);

 while ((dev = pci_get_device(vendor, device, dev))) {
  if (pci_domain_nr(dev->bus) == pci_domain_nr(related->bus) &&
      (dev->bus->number == related->bus->number) &&
      (PCI_SLOT(dev->devfn) == PCI_SLOT(related->devfn)))
   break;
 }

 return dev;
}
