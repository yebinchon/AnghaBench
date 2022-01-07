
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_disable_ats (struct pci_dev*) ;
 int pci_disable_pasid (struct pci_dev*) ;
 int pci_disable_pri (struct pci_dev*) ;

__attribute__((used)) static void pdev_iommuv2_disable(struct pci_dev *pdev)
{
 pci_disable_ats(pdev);
 pci_disable_pri(pdev);
 pci_disable_pasid(pdev);
}
