
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int devfn; } ;
struct ide_port_info {int * tp_ops; int init_iops; } ;


 int PCI_SLOT (int ) ;
 int ide_pci_init_one (struct pci_dev*,struct ide_port_info*,int *) ;
 struct ide_port_info ns87415_chipset ;
 int superio_init_iops ;
 int superio_tp_ops ;

__attribute__((used)) static int ns87415_init_one(struct pci_dev *dev, const struct pci_device_id *id)
{
 struct ide_port_info d = ns87415_chipset;
 return ide_pci_init_one(dev, &d, ((void*)0));
}
