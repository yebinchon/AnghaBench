
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct adf_accel_dev {int dummy; } ;


 struct pci_dev* accel_to_pci_dev (struct adf_accel_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;

void adf_disable_aer(struct adf_accel_dev *accel_dev)
{
 struct pci_dev *pdev = accel_to_pci_dev(accel_dev);

 pci_disable_pcie_error_reporting(pdev);
}
