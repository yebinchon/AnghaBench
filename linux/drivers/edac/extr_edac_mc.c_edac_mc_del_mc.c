
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int ctl_name; int mod_name; int mc_idx; int work; scalar_t__ edac_check; int op_state; } ;
struct device {int dummy; } ;


 int EDAC_MC ;
 int KERN_INFO ;
 int OP_OFFLINE ;
 struct mem_ctl_info* __find_mci_by_dev (struct device*) ;
 scalar_t__ del_mc_from_global_list (struct mem_ctl_info*) ;
 int edac_dbg (int ,char*) ;
 int edac_dev_name (struct mem_ctl_info*) ;
 int * edac_mc_owner ;
 int edac_printk (int ,int ,char*,int ,int ,int ,int ) ;
 int edac_remove_sysfs_mci_device (struct mem_ctl_info*) ;
 int edac_stop_work (int *) ;
 int mem_ctls_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct mem_ctl_info *edac_mc_del_mc(struct device *dev)
{
 struct mem_ctl_info *mci;

 edac_dbg(0, "\n");

 mutex_lock(&mem_ctls_mutex);


 mci = __find_mci_by_dev(dev);
 if (mci == ((void*)0)) {
  mutex_unlock(&mem_ctls_mutex);
  return ((void*)0);
 }


 mci->op_state = OP_OFFLINE;

 if (del_mc_from_global_list(mci))
  edac_mc_owner = ((void*)0);

 mutex_unlock(&mem_ctls_mutex);

 if (mci->edac_check)
  edac_stop_work(&mci->work);


 edac_remove_sysfs_mci_device(mci);

 edac_printk(KERN_INFO, EDAC_MC,
  "Removed device %d for %s %s: DEV %s\n", mci->mc_idx,
  mci->mod_name, mci->ctl_name, edac_dev_name(mci));

 return mci;
}
