
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct edac_device_ctl_info {int dev_idx; struct kobject kobj; TYPE_1__* dev; } ;
struct TYPE_2__ {int kobj; } ;


 int EDAC_DEVICE_SYMLINK ;
 int edac_dbg (int,char*,...) ;
 int edac_device_add_main_sysfs_attributes (struct edac_device_ctl_info*) ;
 int edac_device_create_instances (struct edac_device_ctl_info*) ;
 int edac_device_remove_main_sysfs_attributes (struct edac_device_ctl_info*) ;
 int sysfs_create_link (struct kobject*,int *,int ) ;
 int sysfs_remove_link (struct kobject*,int ) ;

int edac_device_create_sysfs(struct edac_device_ctl_info *edac_dev)
{
 int err;
 struct kobject *edac_kobj = &edac_dev->kobj;

 edac_dbg(0, "idx=%d\n", edac_dev->dev_idx);


 err = edac_device_add_main_sysfs_attributes(edac_dev);
 if (err) {
  edac_dbg(0, "failed to add sysfs attribs\n");
  goto err_out;
 }




 err = sysfs_create_link(edac_kobj,
    &edac_dev->dev->kobj, EDAC_DEVICE_SYMLINK);
 if (err) {
  edac_dbg(0, "sysfs_create_link() returned err= %d\n", err);
  goto err_remove_main_attribs;
 }





 err = edac_device_create_instances(edac_dev);
 if (err) {
  edac_dbg(0, "edac_device_create_instances() returned err= %d\n",
    err);
  goto err_remove_link;
 }


 edac_dbg(4, "create-instances done, idx=%d\n", edac_dev->dev_idx);

 return 0;


err_remove_link:

 sysfs_remove_link(&edac_dev->kobj, EDAC_DEVICE_SYMLINK);

err_remove_main_attribs:
 edac_device_remove_main_sysfs_attributes(edac_dev);

err_out:
 return err;
}
