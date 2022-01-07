
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct ide_port_info {int host_flags; } ;


 int IDE_HFLAG_NO_UNMASK_IRQS ;
 int IDE_HFLAG_SERIALIZE ;
 int ide_pci_init_one (struct pci_dev*,struct ide_port_info*,int *) ;
 int pci_enable_device (struct pci_dev*) ;
 struct ide_port_info rz1000_chipset ;
 scalar_t__ rz1000_disable_readahead (struct pci_dev*) ;

__attribute__((used)) static int rz1000_init_one(struct pci_dev *dev, const struct pci_device_id *id)
{
 struct ide_port_info d = rz1000_chipset;
 int rc;

 rc = pci_enable_device(dev);
 if (rc)
  return rc;

 if (rz1000_disable_readahead(dev)) {
  d.host_flags |= IDE_HFLAG_SERIALIZE;
  d.host_flags |= IDE_HFLAG_NO_UNMASK_IRQS;
 }

 return ide_pci_init_one(dev, &d, ((void*)0));
}
