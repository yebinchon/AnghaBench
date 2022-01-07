
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int max (int,int) ;
 int pci_msi_vec_count (struct pci_dev*) ;
 int pci_msix_vec_count (struct pci_dev*) ;

__attribute__((used)) static int its_pci_msi_vec_count(struct pci_dev *pdev, void *data)
{
 int msi, msix, *count = data;

 msi = max(pci_msi_vec_count(pdev), 0);
 msix = max(pci_msix_vec_count(pdev), 0);
 *count += max(msi, msix);

 return 0;
}
