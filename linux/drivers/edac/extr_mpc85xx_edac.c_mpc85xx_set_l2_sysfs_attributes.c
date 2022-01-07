
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_ctl_info {int sysfs_attributes; } ;


 int mpc85xx_l2_sysfs_attributes ;

__attribute__((used)) static void mpc85xx_set_l2_sysfs_attributes(struct edac_device_ctl_info
         *edac_dev)
{
 edac_dev->sysfs_attributes = mpc85xx_l2_sysfs_attributes;
}
