
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ide_pci_remove (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;

__attribute__((used)) static void rz1000_remove(struct pci_dev *dev)
{
 ide_pci_remove(dev);
 pci_disable_device(dev);
}
