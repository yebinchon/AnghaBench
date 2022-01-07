
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_driver {int * err_handler; } ;
struct pci_dev {int dummy; } ;
struct adf_accel_dev {int dummy; } ;


 struct pci_dev* accel_to_pci_dev (struct adf_accel_dev*) ;
 int adf_err_handler ;
 int pci_enable_pcie_error_reporting (struct pci_dev*) ;

int adf_enable_aer(struct adf_accel_dev *accel_dev, struct pci_driver *adf)
{
 struct pci_dev *pdev = accel_to_pci_dev(accel_dev);

 adf->err_handler = &adf_err_handler;
 pci_enable_pcie_error_reporting(pdev);
 return 0;
}
