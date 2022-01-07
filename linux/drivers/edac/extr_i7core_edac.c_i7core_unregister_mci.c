
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_ctl_info {int * ctl_name; int pdev; struct i7core_pvt* pvt_info; } ;
struct i7core_pvt {scalar_t__ enable_scrub; } ;
struct i7core_dev {struct mem_ctl_info* mci; TYPE_1__** pdev; } ;
struct TYPE_2__ {int dev; } ;


 int KERN_ERR ;
 int disable_sdram_scrub_setting (struct mem_ctl_info*) ;
 int edac_dbg (int,char*,struct mem_ctl_info*,...) ;
 int edac_mc_del_mc (int ) ;
 int edac_mc_free (struct mem_ctl_info*) ;
 int i7core_delete_sysfs_devices (struct mem_ctl_info*) ;
 int i7core_pci_ctl_release (struct i7core_pvt*) ;
 int i7core_printk (int ,char*) ;
 int kfree (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void i7core_unregister_mci(struct i7core_dev *i7core_dev)
{
 struct mem_ctl_info *mci = i7core_dev->mci;
 struct i7core_pvt *pvt;

 if (unlikely(!mci || !mci->pvt_info)) {
  edac_dbg(0, "MC: dev = %p\n", &i7core_dev->pdev[0]->dev);

  i7core_printk(KERN_ERR, "Couldn't find mci handler\n");
  return;
 }

 pvt = mci->pvt_info;

 edac_dbg(0, "MC: mci = %p, dev = %p\n", mci, &i7core_dev->pdev[0]->dev);


 if (pvt->enable_scrub)
  disable_sdram_scrub_setting(mci);


 i7core_pci_ctl_release(pvt);


 i7core_delete_sysfs_devices(mci);
 edac_mc_del_mc(mci->pdev);

 edac_dbg(1, "%s: free mci struct\n", mci->ctl_name);
 kfree(mci->ctl_name);
 edac_mc_free(mci);
 i7core_dev->mci = ((void*)0);
}
