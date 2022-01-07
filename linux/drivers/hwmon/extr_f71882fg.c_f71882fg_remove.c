
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct platform_device {int dev; } ;
struct f71882fg_data {size_t type; int temp_config; scalar_t__ hwmon_dev; } ;
struct TYPE_2__ {int dev_attr; } ;


 int ARRAY_SIZE (int *) ;
 int F71882FG_MAX_INS ;
 int F71882FG_REG_START ;
 int dev_attr_name ;
 int device_remove_file (int *,int *) ;

 int * f71808a_fan3_attr ;


 int * f71858fg_temp_attr ;

 int ** f71862fg_auto_pwm_attr ;

 int ** f71869_auto_pwm_attr ;
 scalar_t__* f71882fg_fan_has_beep ;
 scalar_t__** f71882fg_has_in ;
 scalar_t__* f71882fg_has_in1_alarm ;
 int* f71882fg_nr_fans ;
 int* f71882fg_nr_temps ;
 int f71882fg_read8 (struct f71882fg_data*,int ) ;
 int f71882fg_remove_sysfs_files (struct platform_device*,int *,int) ;
 scalar_t__* f71882fg_temp_has_beep ;

 int ** f8000_auto_pwm_attr ;
 int * f8000_fan_attr ;
 int * f8000_temp_attr ;
 int ** f81866_temp_beep_attr ;

 int ** fxxxx_auto_pwm_attr ;
 int ** fxxxx_fan_attr ;
 int * fxxxx_fan_beep_attr ;
 int * fxxxx_in1_alarm_attr ;
 TYPE_1__* fxxxx_in_attr ;
 int ** fxxxx_temp_attr ;
 int ** fxxxx_temp_beep_attr ;
 int hwmon_device_unregister (scalar_t__) ;
 struct f71882fg_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int f71882fg_remove(struct platform_device *pdev)
{
 struct f71882fg_data *data = platform_get_drvdata(pdev);
 int nr_fans = f71882fg_nr_fans[data->type];
 int nr_temps = f71882fg_nr_temps[data->type];
 int i;
 u8 start_reg = f71882fg_read8(data, F71882FG_REG_START);

 if (data->hwmon_dev)
  hwmon_device_unregister(data->hwmon_dev);

 device_remove_file(&pdev->dev, &dev_attr_name);

 if (start_reg & 0x01) {
  switch (data->type) {
  case 132:
   if (data->temp_config & 0x10)
    f71882fg_remove_sysfs_files(pdev,
     f8000_temp_attr,
     ARRAY_SIZE(f8000_temp_attr));
   else
    f71882fg_remove_sysfs_files(pdev,
     f71858fg_temp_attr,
     ARRAY_SIZE(f71858fg_temp_attr));
   break;
  case 129:
   f71882fg_remove_sysfs_files(pdev,
     f8000_temp_attr,
     ARRAY_SIZE(f8000_temp_attr));
   break;
  case 128:
   f71882fg_remove_sysfs_files(pdev,
     f71858fg_temp_attr,
     ARRAY_SIZE(f71858fg_temp_attr));
   break;
  default:
   f71882fg_remove_sysfs_files(pdev,
    &fxxxx_temp_attr[0][0],
    ARRAY_SIZE(fxxxx_temp_attr[0]) * nr_temps);
  }
  if (f71882fg_temp_has_beep[data->type]) {
   if (data->type == 128)
    f71882fg_remove_sysfs_files(pdev,
     &f81866_temp_beep_attr[0][0],
     ARRAY_SIZE(f81866_temp_beep_attr[0])
      * nr_temps);
   else
    f71882fg_remove_sysfs_files(pdev,
     &fxxxx_temp_beep_attr[0][0],
     ARRAY_SIZE(fxxxx_temp_beep_attr[0])
      * nr_temps);
  }

  for (i = 0; i < F71882FG_MAX_INS; i++) {
   if (f71882fg_has_in[data->type][i]) {
    device_remove_file(&pdev->dev,
      &fxxxx_in_attr[i].dev_attr);
   }
  }
  if (f71882fg_has_in1_alarm[data->type]) {
   f71882fg_remove_sysfs_files(pdev,
     fxxxx_in1_alarm_attr,
     ARRAY_SIZE(fxxxx_in1_alarm_attr));
  }
 }

 if (start_reg & 0x02) {
  f71882fg_remove_sysfs_files(pdev, &fxxxx_fan_attr[0][0],
    ARRAY_SIZE(fxxxx_fan_attr[0]) * nr_fans);

  if (f71882fg_fan_has_beep[data->type]) {
   f71882fg_remove_sysfs_files(pdev,
     fxxxx_fan_beep_attr, nr_fans);
  }

  switch (data->type) {
  case 134:
   f71882fg_remove_sysfs_files(pdev,
    &fxxxx_auto_pwm_attr[0][0],
    ARRAY_SIZE(fxxxx_auto_pwm_attr[0]) * nr_fans);
   f71882fg_remove_sysfs_files(pdev,
     f71808a_fan3_attr,
     ARRAY_SIZE(f71808a_fan3_attr));
   break;
  case 131:
   f71882fg_remove_sysfs_files(pdev,
    &f71862fg_auto_pwm_attr[0][0],
    ARRAY_SIZE(f71862fg_auto_pwm_attr[0]) *
     nr_fans);
   break;
  case 133:
  case 130:
   f71882fg_remove_sysfs_files(pdev,
    &f71869_auto_pwm_attr[0][0],
    ARRAY_SIZE(f71869_auto_pwm_attr[0]) * nr_fans);
   break;
  case 129:
   f71882fg_remove_sysfs_files(pdev,
     f8000_fan_attr,
     ARRAY_SIZE(f8000_fan_attr));
   f71882fg_remove_sysfs_files(pdev,
    &f8000_auto_pwm_attr[0][0],
    ARRAY_SIZE(f8000_auto_pwm_attr[0]) * nr_fans);
   break;
  default:
   f71882fg_remove_sysfs_files(pdev,
    &fxxxx_auto_pwm_attr[0][0],
    ARRAY_SIZE(fxxxx_auto_pwm_attr[0]) * nr_fans);
  }
 }
 return 0;
}
