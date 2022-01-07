
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {int number; } ;


 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 scalar_t__ pci_domain_nr (TYPE_1__*) ;

__attribute__((used)) static u64
nouveau_pci_name(struct pci_dev *pdev)
{
 u64 name = (u64)pci_domain_nr(pdev->bus) << 32;
 name |= pdev->bus->number << 16;
 name |= PCI_SLOT(pdev->devfn) << 8;
 return name | PCI_FUNC(pdev->devfn);
}
