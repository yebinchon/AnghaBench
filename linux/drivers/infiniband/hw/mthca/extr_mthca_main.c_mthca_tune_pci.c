
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_dev {int mthca_flags; int pdev; } ;


 int ENODEV ;
 int MTHCA_FLAG_PCIE ;
 int PCI_CAP_ID_PCIX ;
 int mthca_err (struct mthca_dev*,char*) ;
 int mthca_info (struct mthca_dev*,char*) ;
 scalar_t__ pci_find_capability (int ,int ) ;
 scalar_t__ pci_is_pcie (int ) ;
 scalar_t__ pcie_set_readrq (int ,int) ;
 int pcix_get_max_mmrbc (int ) ;
 scalar_t__ pcix_set_mmrbc (int ,int ) ;
 int tune_pci ;

__attribute__((used)) static int mthca_tune_pci(struct mthca_dev *mdev)
{
 if (!tune_pci)
  return 0;


 if (pci_find_capability(mdev->pdev, PCI_CAP_ID_PCIX)) {
  if (pcix_set_mmrbc(mdev->pdev, pcix_get_max_mmrbc(mdev->pdev))) {
   mthca_err(mdev, "Couldn't set PCI-X max read count, "
    "aborting.\n");
   return -ENODEV;
  }
 } else if (!(mdev->mthca_flags & MTHCA_FLAG_PCIE))
  mthca_info(mdev, "No PCI-X capability, not setting RBC.\n");

 if (pci_is_pcie(mdev->pdev)) {
  if (pcie_set_readrq(mdev->pdev, 4096)) {
   mthca_err(mdev, "Couldn't write PCI Express read request, "
    "aborting.\n");
   return -ENODEV;
  }
 } else if (mdev->mthca_flags & MTHCA_FLAG_PCIE)
  mthca_info(mdev, "No PCI Express capability, "
      "not setting Max Read Request Size.\n");

 return 0;
}
