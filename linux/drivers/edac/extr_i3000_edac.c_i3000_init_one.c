
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int driver_data; } ;
struct pci_dev {int dummy; } ;


 int EIO ;
 int edac_dbg (int ,char*) ;
 int i3000_probe1 (struct pci_dev*,int ) ;
 scalar_t__ mci_pdev ;
 scalar_t__ pci_dev_get (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;

__attribute__((used)) static int i3000_init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 int rc;

 edac_dbg(0, "MC:\n");

 if (pci_enable_device(pdev) < 0)
  return -EIO;

 rc = i3000_probe1(pdev, ent->driver_data);
 if (!mci_pdev)
  mci_pdev = pci_dev_get(pdev);

 return rc;
}
