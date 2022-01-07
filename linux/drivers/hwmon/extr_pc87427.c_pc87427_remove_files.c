
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pc87427_data {int fan_enabled; int pwm_enabled; int temp_enabled; } ;
struct device {int kobj; } ;


 int dev_attr_name ;
 struct pc87427_data* dev_get_drvdata (struct device*) ;
 int device_remove_file (struct device*,int *) ;
 int * pc87427_group_fan ;
 int * pc87427_group_pwm ;
 int * pc87427_group_temp ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void pc87427_remove_files(struct device *dev)
{
 struct pc87427_data *data = dev_get_drvdata(dev);
 int i;

 device_remove_file(dev, &dev_attr_name);
 for (i = 0; i < 8; i++) {
  if (!(data->fan_enabled & (1 << i)))
   continue;
  sysfs_remove_group(&dev->kobj, &pc87427_group_fan[i]);
 }
 for (i = 0; i < 4; i++) {
  if (!(data->pwm_enabled & (1 << i)))
   continue;
  sysfs_remove_group(&dev->kobj, &pc87427_group_pwm[i]);
 }
 for (i = 0; i < 6; i++) {
  if (!(data->temp_enabled & (1 << i)))
   continue;
  sysfs_remove_group(&dev->kobj, &pc87427_group_temp[i]);
 }
}
