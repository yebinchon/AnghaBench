
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct f71882fg_data {int type; int pwm_enable; int* pwm_auto_point_mapping; } ;


 int ARRAY_SIZE (int *) ;
 int F71882FG_REG_POINT_MAPPING (int) ;
 int dev_err (int *,char*,int,int) ;
 int dev_info (int *,char*,int,char*) ;
 int dev_warn (int *,char*,int) ;




 int ** f71862fg_auto_pwm_attr ;

 int ** f71869_auto_pwm_attr ;

 int f71882fg_create_sysfs_files (struct platform_device*,int *,int) ;
 scalar_t__* f71882fg_fan_has_beep ;
 int f71882fg_read8 (struct f71882fg_data*,int ) ;




 int ** f8000_auto_pwm_attr ;
 int ** fxxxx_auto_pwm_attr ;
 int ** fxxxx_fan_attr ;
 int * fxxxx_fan_beep_attr ;
 struct f71882fg_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int f71882fg_create_fan_sysfs_files(
 struct platform_device *pdev, int idx)
{
 struct f71882fg_data *data = platform_get_drvdata(pdev);
 int err;


 err = 0;
 switch (data->type) {
 case 135:
  if (((data->pwm_enable >> (idx * 2)) & 3) == 3)
   err = 1;
  break;
 case 134:
  if (((data->pwm_enable >> (idx * 2)) & 1) != 1)
   err = 1;
  break;
 case 128:
  if (idx == 2)
   err = data->pwm_enable & 0x20;
  break;
 default:
  break;
 }
 if (err) {
  dev_err(&pdev->dev,
   "Invalid (reserved) pwm settings: 0x%02x, "
   "skipping fan %d\n",
   (data->pwm_enable >> (idx * 2)) & 3, idx + 1);
  return 0;
 }

 err = f71882fg_create_sysfs_files(pdev, &fxxxx_fan_attr[idx][0],
       ARRAY_SIZE(fxxxx_fan_attr[0]));
 if (err)
  return err;

 if (f71882fg_fan_has_beep[data->type]) {
  err = f71882fg_create_sysfs_files(pdev,
        &fxxxx_fan_beep_attr[idx],
        1);
  if (err)
   return err;
 }

 dev_info(&pdev->dev, "Fan: %d is in %s mode\n", idx + 1,
   (data->pwm_enable & (1 << (2 * idx))) ? "duty-cycle" : "RPM");


 switch (data->type) {
 case 136:
 case 137:
 case 133:
 case 132:
 case 129:
 case 130:
 case 131:
  data->pwm_auto_point_mapping[idx] =
   f71882fg_read8(data, F71882FG_REG_POINT_MAPPING(idx));
  if ((data->pwm_auto_point_mapping[idx] & 0x80) ||
      (data->pwm_auto_point_mapping[idx] & 3) == 0) {
   dev_warn(&pdev->dev,
     "Auto pwm controlled by raw digital "
     "data, disabling pwm auto_point "
     "sysfs attributes for fan %d\n", idx + 1);
   return 0;
  }
  break;
 default:
  break;
 }

 switch (data->type) {
 case 134:
  err = f71882fg_create_sysfs_files(pdev,
     &f71862fg_auto_pwm_attr[idx][0],
     ARRAY_SIZE(f71862fg_auto_pwm_attr[0]));
  break;
 case 136:
 case 133:
  err = f71882fg_create_sysfs_files(pdev,
     &f71869_auto_pwm_attr[idx][0],
     ARRAY_SIZE(f71869_auto_pwm_attr[0]));
  break;
 case 128:
  err = f71882fg_create_sysfs_files(pdev,
     &f8000_auto_pwm_attr[idx][0],
     ARRAY_SIZE(f8000_auto_pwm_attr[0]));
  break;
 default:
  err = f71882fg_create_sysfs_files(pdev,
     &fxxxx_auto_pwm_attr[idx][0],
     ARRAY_SIZE(fxxxx_auto_pwm_attr[0]));
 }

 return err;
}
