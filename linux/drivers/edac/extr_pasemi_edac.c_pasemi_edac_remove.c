
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct mem_ctl_info {int dummy; } ;


 struct mem_ctl_info* edac_mc_del_mc (int *) ;
 int edac_mc_free (struct mem_ctl_info*) ;

__attribute__((used)) static void pasemi_edac_remove(struct pci_dev *pdev)
{
 struct mem_ctl_info *mci = edac_mc_del_mc(&pdev->dev);

 if (!mci)
  return;

 edac_mc_free(mci);
}
