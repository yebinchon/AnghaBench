
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int driver_data; } ;
struct pci_dev {int dummy; } ;


 int EIO ;
 int KERN_INFO ;
 int edac_dbg (int ,char*) ;
 int i82875p_printk (int ,char*) ;
 int i82875p_probe1 (struct pci_dev*,int ) ;
 int * mci_pdev ;
 int * pci_dev_get (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;

__attribute__((used)) static int i82875p_init_one(struct pci_dev *pdev,
       const struct pci_device_id *ent)
{
 int rc;

 edac_dbg(0, "\n");
 i82875p_printk(KERN_INFO, "i82875p init one\n");

 if (pci_enable_device(pdev) < 0)
  return -EIO;

 rc = i82875p_probe1(pdev, ent->driver_data);

 if (mci_pdev == ((void*)0))
  mci_pdev = pci_dev_get(pdev);

 return rc;
}
