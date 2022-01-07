
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int hisi_zip_sriov_disable (struct pci_dev*) ;
 int hisi_zip_sriov_enable (struct pci_dev*,int) ;

__attribute__((used)) static int hisi_zip_sriov_configure(struct pci_dev *pdev, int num_vfs)
{
 if (num_vfs == 0)
  return hisi_zip_sriov_disable(pdev);
 else
  return hisi_zip_sriov_enable(pdev, num_vfs);
}
