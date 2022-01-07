
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct mem_ctl_info {scalar_t__ pvt_info; } ;
struct i82875p_pvt {scalar_t__ ovrfl_pdev; scalar_t__ ovrfl_window; } ;


 int edac_dbg (int ,char*) ;
 struct mem_ctl_info* edac_mc_del_mc (int *) ;
 int edac_mc_free (struct mem_ctl_info*) ;
 int edac_pci_release_generic_ctl (scalar_t__) ;
 scalar_t__ i82875p_pci ;
 int iounmap (scalar_t__) ;
 int pci_dev_put (scalar_t__) ;
 int pci_disable_device (scalar_t__) ;
 int pci_release_regions (scalar_t__) ;

__attribute__((used)) static void i82875p_remove_one(struct pci_dev *pdev)
{
 struct mem_ctl_info *mci;
 struct i82875p_pvt *pvt = ((void*)0);

 edac_dbg(0, "\n");

 if (i82875p_pci)
  edac_pci_release_generic_ctl(i82875p_pci);

 if ((mci = edac_mc_del_mc(&pdev->dev)) == ((void*)0))
  return;

 pvt = (struct i82875p_pvt *)mci->pvt_info;

 if (pvt->ovrfl_window)
  iounmap(pvt->ovrfl_window);

 if (pvt->ovrfl_pdev) {



  pci_disable_device(pvt->ovrfl_pdev);
  pci_dev_put(pvt->ovrfl_pdev);
 }

 edac_mc_free(mci);
}
