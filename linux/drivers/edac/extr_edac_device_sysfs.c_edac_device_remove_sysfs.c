
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_ctl_info {int kobj; } ;


 int EDAC_DEVICE_SYMLINK ;
 int edac_dbg (int ,char*) ;
 int edac_device_delete_instances (struct edac_device_ctl_info*) ;
 int edac_device_remove_main_sysfs_attributes (struct edac_device_ctl_info*) ;
 int sysfs_remove_link (int *,int ) ;

void edac_device_remove_sysfs(struct edac_device_ctl_info *edac_dev)
{
 edac_dbg(0, "\n");


 edac_device_remove_main_sysfs_attributes(edac_dev);


 sysfs_remove_link(&edac_dev->kobj, EDAC_DEVICE_SYMLINK);


 edac_device_delete_instances(edac_dev);
}
