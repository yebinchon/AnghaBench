
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct mem_ctl_info {int dummy; } ;


 int edac_dbg (int ,char*) ;
 struct mem_ctl_info* edac_mc_del_mc (int *) ;
 int edac_mc_free (struct mem_ctl_info*) ;
 int edac_pci_release_generic_ctl (scalar_t__) ;
 scalar_t__ i3000_pci ;

__attribute__((used)) static void i3000_remove_one(struct pci_dev *pdev)
{
 struct mem_ctl_info *mci;

 edac_dbg(0, "\n");

 if (i3000_pci)
  edac_pci_release_generic_ctl(i3000_pci);

 mci = edac_mc_del_mc(&pdev->dev);
 if (!mci)
  return;

 edac_mc_free(mci);
}
