
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_ctl_info {int ctl_name; int mod_name; int dev_idx; int op_state; } ;
struct device {int dummy; } ;


 int EDAC_MC ;
 int KERN_INFO ;
 int OP_OFFLINE ;
 int del_edac_device_from_global_list (struct edac_device_ctl_info*) ;
 int device_ctls_mutex ;
 int edac_dbg (int ,char*) ;
 int edac_dev_name (struct edac_device_ctl_info*) ;
 int edac_device_remove_sysfs (struct edac_device_ctl_info*) ;
 int edac_device_workq_teardown (struct edac_device_ctl_info*) ;
 int edac_printk (int ,int ,char*,int ,int ,int ,int ) ;
 struct edac_device_ctl_info* find_edac_device_by_dev (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct edac_device_ctl_info *edac_device_del_device(struct device *dev)
{
 struct edac_device_ctl_info *edac_dev;

 edac_dbg(0, "\n");

 mutex_lock(&device_ctls_mutex);


 edac_dev = find_edac_device_by_dev(dev);
 if (edac_dev == ((void*)0)) {
  mutex_unlock(&device_ctls_mutex);
  return ((void*)0);
 }


 edac_dev->op_state = OP_OFFLINE;


 del_edac_device_from_global_list(edac_dev);

 mutex_unlock(&device_ctls_mutex);


 edac_device_workq_teardown(edac_dev);


 edac_device_remove_sysfs(edac_dev);

 edac_printk(KERN_INFO, EDAC_MC,
  "Removed device %d for %s %s: DEV %s\n",
  edac_dev->dev_idx,
  edac_dev->mod_name, edac_dev->ctl_name, edac_dev_name(edac_dev));

 return edac_dev;
}
