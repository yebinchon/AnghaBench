
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int nitrox_sriov_disable (struct pci_dev*) ;
 int nitrox_sriov_enable (struct pci_dev*,int) ;

int nitrox_sriov_configure(struct pci_dev *pdev, int num_vfs)
{
 if (!num_vfs)
  return nitrox_sriov_disable(pdev);

 return nitrox_sriov_enable(pdev, num_vfs);
}
