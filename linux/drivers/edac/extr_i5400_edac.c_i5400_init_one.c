
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int driver_data; } ;
struct pci_dev {int dummy; } ;


 int edac_dbg (int ,char*) ;
 int i5400_probe1 (struct pci_dev*,int ) ;
 int pci_enable_device (struct pci_dev*) ;

__attribute__((used)) static int i5400_init_one(struct pci_dev *pdev, const struct pci_device_id *id)
{
 int rc;

 edac_dbg(0, "MC:\n");


 rc = pci_enable_device(pdev);
 if (rc)
  return rc;


 return i5400_probe1(pdev, id->driver_data);
}
