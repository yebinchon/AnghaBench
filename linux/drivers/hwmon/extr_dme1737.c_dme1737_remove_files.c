
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dme1737_data {int has_features; int client; } ;
struct device {int kobj; } ;
struct TYPE_2__ {int attr; } ;


 int ARRAY_SIZE (int *) ;
 int HAS_FAN (int) ;
 int HAS_IN7 ;
 int HAS_PWM (int) ;
 int HAS_PWM_MIN ;
 int HAS_TEMP_OFFSET ;
 int HAS_VID ;
 int HAS_ZONE3 ;
 int HAS_ZONE_HYST ;
 TYPE_1__ dev_attr_name ;
 struct dme1737_data* dev_get_drvdata (struct device*) ;
 int ** dme1737_auto_pwm_min_attr ;
 int * dme1737_fan_group ;
 int dme1737_group ;
 int dme1737_in7_group ;
 int * dme1737_pwm_group ;
 int dme1737_temp_offset_group ;
 int dme1737_vid_group ;
 int dme1737_zone3_group ;
 int dme1737_zone_hyst_group ;
 int sysfs_remove_file (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void dme1737_remove_files(struct device *dev)
{
 struct dme1737_data *data = dev_get_drvdata(dev);
 int ix;

 for (ix = 0; ix < ARRAY_SIZE(dme1737_fan_group); ix++) {
  if (data->has_features & HAS_FAN(ix)) {
   sysfs_remove_group(&dev->kobj,
        &dme1737_fan_group[ix]);
  }
 }

 for (ix = 0; ix < ARRAY_SIZE(dme1737_pwm_group); ix++) {
  if (data->has_features & HAS_PWM(ix)) {
   sysfs_remove_group(&dev->kobj,
        &dme1737_pwm_group[ix]);
   if ((data->has_features & HAS_PWM_MIN) && ix < 3) {
    sysfs_remove_file(&dev->kobj,
      dme1737_auto_pwm_min_attr[ix]);
   }
  }
 }

 if (data->has_features & HAS_TEMP_OFFSET)
  sysfs_remove_group(&dev->kobj, &dme1737_temp_offset_group);
 if (data->has_features & HAS_VID)
  sysfs_remove_group(&dev->kobj, &dme1737_vid_group);
 if (data->has_features & HAS_ZONE3)
  sysfs_remove_group(&dev->kobj, &dme1737_zone3_group);
 if (data->has_features & HAS_ZONE_HYST)
  sysfs_remove_group(&dev->kobj, &dme1737_zone_hyst_group);
 if (data->has_features & HAS_IN7)
  sysfs_remove_group(&dev->kobj, &dme1737_in7_group);
 sysfs_remove_group(&dev->kobj, &dme1737_group);

 if (!data->client)
  sysfs_remove_file(&dev->kobj, &dev_attr_name.attr);
}
