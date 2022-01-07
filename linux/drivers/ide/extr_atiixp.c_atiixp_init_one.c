
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {size_t driver_data; } ;
struct pci_dev {int dummy; } ;


 int * atiixp_pci_info ;
 int ide_pci_init_one (struct pci_dev*,int *,int *) ;

__attribute__((used)) static int atiixp_init_one(struct pci_dev *dev, const struct pci_device_id *id)
{
 return ide_pci_init_one(dev, &atiixp_pci_info[id->driver_data], ((void*)0));
}
