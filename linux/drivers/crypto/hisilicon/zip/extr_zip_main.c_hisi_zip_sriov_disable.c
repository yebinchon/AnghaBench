
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hisi_zip {int dummy; } ;


 int EPERM ;
 int dev_err (int *,char*) ;
 int hisi_zip_clear_vft_config (struct hisi_zip*) ;
 int pci_disable_sriov (struct pci_dev*) ;
 struct hisi_zip* pci_get_drvdata (struct pci_dev*) ;
 scalar_t__ pci_vfs_assigned (struct pci_dev*) ;

__attribute__((used)) static int hisi_zip_sriov_disable(struct pci_dev *pdev)
{
 struct hisi_zip *hisi_zip = pci_get_drvdata(pdev);

 if (pci_vfs_assigned(pdev)) {
  dev_err(&pdev->dev,
   "Can't disable VFs while VFs are assigned!\n");
  return -EPERM;
 }


 pci_disable_sriov(pdev);

 return hisi_zip_clear_vft_config(hisi_zip);
}
