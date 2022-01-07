
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct mem_ctl_info {struct i82975x_pvt* pvt_info; } ;
struct i82975x_pvt {scalar_t__ mch_window; } ;


 int edac_dbg (int ,char*) ;
 struct mem_ctl_info* edac_mc_del_mc (int *) ;
 int edac_mc_free (struct mem_ctl_info*) ;
 int iounmap (scalar_t__) ;

__attribute__((used)) static void i82975x_remove_one(struct pci_dev *pdev)
{
 struct mem_ctl_info *mci;
 struct i82975x_pvt *pvt;

 edac_dbg(0, "\n");

 mci = edac_mc_del_mc(&pdev->dev);
 if (mci == ((void*)0))
  return;

 pvt = mci->pvt_info;
 if (pvt->mch_window)
  iounmap( pvt->mch_window );

 edac_mc_free(mci);
}
