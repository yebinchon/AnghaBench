
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_ctl_info {int dummy; } ;


 int edac_device_unregister_sysfs_main_kobj (struct edac_device_ctl_info*) ;

void edac_device_free_ctl_info(struct edac_device_ctl_info *ctl_info)
{
 edac_device_unregister_sysfs_main_kobj(ctl_info);
}
