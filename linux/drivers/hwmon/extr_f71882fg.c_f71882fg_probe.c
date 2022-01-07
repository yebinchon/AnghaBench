
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct platform_device {int dev; } ;
struct f71882fg_sio_data {size_t type; } ;
struct f71882fg_data {size_t type; int temp_start; int temp_config; int auto_point_temp_signed; int * hwmon_dev; void* pwm_enable; int update_lock; int addr; } ;
struct TYPE_4__ {int dev_attr; } ;
struct TYPE_3__ {int start; } ;


 int ARRAY_SIZE (int *) ;
 int ENODEV ;
 int ENOMEM ;
 int F71882FG_FAN_NEG_TEMP_EN ;
 int F71882FG_FAN_PROG_SEL ;
 int F71882FG_MAX_INS ;
 int F71882FG_REG_FAN_FAULT_T ;
 int F71882FG_REG_PWM_ENABLE ;
 int F71882FG_REG_START ;
 int F71882FG_REG_TEMP_CONFIG ;
 int GFP_KERNEL ;
 int IORESOURCE_IO ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_attr_name ;
 struct f71882fg_sio_data* dev_get_platdata (int *) ;
 int dev_warn (int *,char*) ;
 int device_create_file (int *,int *) ;
 struct f71882fg_data* devm_kzalloc (int *,int,int ) ;

 int * f71808a_fan3_attr ;


 int * f71858fg_temp_attr ;


 int f71882fg_create_fan_sysfs_files (struct platform_device*,int) ;
 int f71882fg_create_sysfs_files (struct platform_device*,int *,int) ;
 scalar_t__** f71882fg_has_in ;
 scalar_t__* f71882fg_has_in1_alarm ;
 int* f71882fg_nr_fans ;
 int* f71882fg_nr_temps ;
 void* f71882fg_read8 (struct f71882fg_data*,int ) ;
 int f71882fg_remove (struct platform_device*) ;
 scalar_t__* f71882fg_temp_has_beep ;
 int f71882fg_write8 (struct f71882fg_data*,int ,int) ;




 int * f8000_fan_attr ;
 int * f8000_temp_attr ;
 int ** f81866_temp_beep_attr ;

 int * fxxxx_in1_alarm_attr ;
 TYPE_2__* fxxxx_in_attr ;
 int ** fxxxx_temp_attr ;
 int ** fxxxx_temp_beep_attr ;
 int * hwmon_device_register (int *) ;
 int mutex_init (int *) ;
 TYPE_1__* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct f71882fg_data*) ;

__attribute__((used)) static int f71882fg_probe(struct platform_device *pdev)
{
 struct f71882fg_data *data;
 struct f71882fg_sio_data *sio_data = dev_get_platdata(&pdev->dev);
 int nr_fans = f71882fg_nr_fans[sio_data->type];
 int nr_temps = f71882fg_nr_temps[sio_data->type];
 int err, i;
 int size;
 u8 start_reg, reg;

 data = devm_kzalloc(&pdev->dev, sizeof(struct f71882fg_data),
       GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->addr = platform_get_resource(pdev, IORESOURCE_IO, 0)->start;
 data->type = sio_data->type;
 data->temp_start =
     (data->type == 135 || data->type == 129 ||
  data->type == 128) ? 0 : 1;
 mutex_init(&data->update_lock);
 platform_set_drvdata(pdev, data);

 start_reg = f71882fg_read8(data, F71882FG_REG_START);
 if (start_reg & 0x04) {
  dev_warn(&pdev->dev, "Hardware monitor is powered down\n");
  return -ENODEV;
 }
 if (!(start_reg & 0x03)) {
  dev_warn(&pdev->dev, "Hardware monitoring not activated\n");
  return -ENODEV;
 }


 err = device_create_file(&pdev->dev, &dev_attr_name);
 if (err)
  goto exit_unregister_sysfs;

 if (start_reg & 0x01) {
  switch (data->type) {
  case 135:
   data->temp_config =
    f71882fg_read8(data, F71882FG_REG_TEMP_CONFIG);
   if (data->temp_config & 0x10)




    err = f71882fg_create_sysfs_files(pdev,
     f8000_temp_attr,
     ARRAY_SIZE(f8000_temp_attr));
   else
    err = f71882fg_create_sysfs_files(pdev,
     f71858fg_temp_attr,
     ARRAY_SIZE(f71858fg_temp_attr));
   break;
  case 129:
   err = f71882fg_create_sysfs_files(pdev,
     f8000_temp_attr,
     ARRAY_SIZE(f8000_temp_attr));
   break;
  case 128:
   err = f71882fg_create_sysfs_files(pdev,
     f71858fg_temp_attr,
     ARRAY_SIZE(f71858fg_temp_attr));
   break;
  default:
   err = f71882fg_create_sysfs_files(pdev,
    &fxxxx_temp_attr[0][0],
    ARRAY_SIZE(fxxxx_temp_attr[0]) * nr_temps);
  }
  if (err)
   goto exit_unregister_sysfs;

  if (f71882fg_temp_has_beep[data->type]) {
   if (data->type == 128) {
    size = ARRAY_SIZE(f81866_temp_beep_attr[0]);
    err = f71882fg_create_sysfs_files(pdev,
      &f81866_temp_beep_attr[0][0],
      size * nr_temps);

   } else {
    size = ARRAY_SIZE(fxxxx_temp_beep_attr[0]);
    err = f71882fg_create_sysfs_files(pdev,
      &fxxxx_temp_beep_attr[0][0],
      size * nr_temps);
   }
   if (err)
    goto exit_unregister_sysfs;
  }

  for (i = 0; i < F71882FG_MAX_INS; i++) {
   if (f71882fg_has_in[data->type][i]) {
    err = device_create_file(&pdev->dev,
      &fxxxx_in_attr[i].dev_attr);
    if (err)
     goto exit_unregister_sysfs;
   }
  }
  if (f71882fg_has_in1_alarm[data->type]) {
   err = f71882fg_create_sysfs_files(pdev,
     fxxxx_in1_alarm_attr,
     ARRAY_SIZE(fxxxx_in1_alarm_attr));
   if (err)
    goto exit_unregister_sysfs;
  }
 }

 if (start_reg & 0x02) {
  switch (data->type) {
  case 136:
  case 137:
  case 134:
  case 133:

   data->auto_point_temp_signed = 1;

  case 130:
  case 131:
  case 132:
   reg = f71882fg_read8(data, F71882FG_REG_FAN_FAULT_T);
   if (reg & F71882FG_FAN_NEG_TEMP_EN)
    data->auto_point_temp_signed = 1;

   reg &= ~F71882FG_FAN_PROG_SEL;
   f71882fg_write8(data, F71882FG_REG_FAN_FAULT_T, reg);
   break;
  default:
   break;
  }

  data->pwm_enable =
   f71882fg_read8(data, F71882FG_REG_PWM_ENABLE);

  for (i = 0; i < nr_fans; i++) {
   err = f71882fg_create_fan_sysfs_files(pdev, i);
   if (err)
    goto exit_unregister_sysfs;
  }


  switch (data->type) {
  case 137:
   err = f71882fg_create_sysfs_files(pdev,
     f71808a_fan3_attr,
     ARRAY_SIZE(f71808a_fan3_attr));
   break;
  case 129:
   err = f71882fg_create_sysfs_files(pdev,
     f8000_fan_attr,
     ARRAY_SIZE(f8000_fan_attr));
   break;
  default:
   break;
  }
  if (err)
   goto exit_unregister_sysfs;
 }

 data->hwmon_dev = hwmon_device_register(&pdev->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  data->hwmon_dev = ((void*)0);
  goto exit_unregister_sysfs;
 }

 return 0;

exit_unregister_sysfs:
 f71882fg_remove(pdev);
 return err;
}
