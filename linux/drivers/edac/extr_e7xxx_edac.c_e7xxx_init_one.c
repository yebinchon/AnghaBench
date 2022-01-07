
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int driver_data; } ;
struct pci_dev {int dummy; } ;


 int EIO ;
 int e7xxx_probe1 (struct pci_dev*,int ) ;
 int edac_dbg (int ,char*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;

__attribute__((used)) static int e7xxx_init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 edac_dbg(0, "\n");


 return pci_enable_device(pdev) ?
  -EIO : e7xxx_probe1(pdev, ent->driver_data);
}
