
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_disable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;

void hfi1_pcie_cleanup(struct pci_dev *pdev)
{
 pci_disable_device(pdev);




 pci_release_regions(pdev);
}
