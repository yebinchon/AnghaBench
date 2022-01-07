
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct mem_ctl_info {int dummy; } ;


 scalar_t__ amd76x_pci ;
 int edac_dbg (int ,char*) ;
 struct mem_ctl_info* edac_mc_del_mc (int *) ;
 int edac_mc_free (struct mem_ctl_info*) ;
 int edac_pci_release_generic_ctl (scalar_t__) ;

__attribute__((used)) static void amd76x_remove_one(struct pci_dev *pdev)
{
 struct mem_ctl_info *mci;

 edac_dbg(0, "\n");

 if (amd76x_pci)
  edac_pci_release_generic_ctl(amd76x_pci);

 if ((mci = edac_mc_del_mc(&pdev->dev)) == ((void*)0))
  return;

 edac_mc_free(mci);
}
