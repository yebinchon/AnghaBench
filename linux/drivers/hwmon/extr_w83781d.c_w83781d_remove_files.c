
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int sysfs_remove_group (int *,int *) ;
 int w83781d_group ;
 int w83781d_group_in1 ;
 int w83781d_group_in78 ;
 int w83781d_group_other ;
 int w83781d_group_pwm12 ;
 int w83781d_group_pwm34 ;
 int w83781d_group_temp3 ;

__attribute__((used)) static void w83781d_remove_files(struct device *dev)
{
 sysfs_remove_group(&dev->kobj, &w83781d_group);
 sysfs_remove_group(&dev->kobj, &w83781d_group_in1);
 sysfs_remove_group(&dev->kobj, &w83781d_group_in78);
 sysfs_remove_group(&dev->kobj, &w83781d_group_temp3);
 sysfs_remove_group(&dev->kobj, &w83781d_group_pwm12);
 sysfs_remove_group(&dev->kobj, &w83781d_group_pwm34);
 sysfs_remove_group(&dev->kobj, &w83781d_group_other);
}
