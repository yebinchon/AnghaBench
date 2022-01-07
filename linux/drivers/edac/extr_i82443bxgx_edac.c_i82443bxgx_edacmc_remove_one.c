
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
 scalar_t__ i82443bxgx_pci ;

__attribute__((used)) static void i82443bxgx_edacmc_remove_one(struct pci_dev *pdev)
{
 struct mem_ctl_info *mci;

 edac_dbg(0, "\n");

 if (i82443bxgx_pci)
  edac_pci_release_generic_ctl(i82443bxgx_pci);

 if ((mci = edac_mc_del_mc(&pdev->dev)) == ((void*)0))
  return;

 edac_mc_free(mci);
}
