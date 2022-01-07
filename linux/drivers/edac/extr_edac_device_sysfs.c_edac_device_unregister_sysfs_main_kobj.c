
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_ctl_info {int kobj; } ;


 int edac_dbg (int,char*,...) ;
 int kobject_name (int *) ;
 int kobject_put (int *) ;

void edac_device_unregister_sysfs_main_kobj(struct edac_device_ctl_info *dev)
{
 edac_dbg(0, "\n");
 edac_dbg(4, "name of kobject is: %s\n", kobject_name(&dev->kobj));
 kobject_put(&dev->kobj);
}
