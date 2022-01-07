
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int cci_pci_sriov_configure (struct pci_dev*,int ) ;
 int cci_remove_feature_devs (struct pci_dev*) ;
 scalar_t__ dev_is_pf (int *) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;

__attribute__((used)) static void cci_pci_remove(struct pci_dev *pcidev)
{
 if (dev_is_pf(&pcidev->dev))
  cci_pci_sriov_configure(pcidev, 0);

 cci_remove_feature_devs(pcidev);
 pci_disable_pcie_error_reporting(pcidev);
}
