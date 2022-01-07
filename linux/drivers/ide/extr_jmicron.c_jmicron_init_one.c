
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;


 int ide_pci_init_one (struct pci_dev*,int *,int *) ;
 int jmicron_chipset ;

__attribute__((used)) static int jmicron_init_one(struct pci_dev *dev, const struct pci_device_id *id)
{
 return ide_pci_init_one(dev, &jmicron_chipset, ((void*)0));
}
