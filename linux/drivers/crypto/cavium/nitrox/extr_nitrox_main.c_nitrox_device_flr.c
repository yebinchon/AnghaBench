
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int ENOMEM ;
 int dev_err (int *,char*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pcie_flr (struct pci_dev*) ;
 scalar_t__ pcie_has_flr (struct pci_dev*) ;

__attribute__((used)) static int nitrox_device_flr(struct pci_dev *pdev)
{
 int pos = 0;

 pos = pci_save_state(pdev);
 if (pos) {
  dev_err(&pdev->dev, "Failed to save pci state\n");
  return -ENOMEM;
 }


 if (pcie_has_flr(pdev))
  pcie_flr(pdev);

 pci_restore_state(pdev);

 return 0;
}
