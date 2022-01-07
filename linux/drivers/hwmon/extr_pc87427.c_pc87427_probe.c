
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pc87427_sio_data {scalar_t__* address; } ;
struct pc87427_data {scalar_t__* address; char* name; int fan_enabled; int pwm_enabled; int temp_enabled; int hwmon_dev; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_attr_name ;
 int dev_err (TYPE_1__*,char*,int) ;
 struct pc87427_sio_data* dev_get_platdata (TYPE_1__*) ;
 int device_create_file (TYPE_1__*,int *) ;
 struct pc87427_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int hwmon_device_register (TYPE_1__*) ;
 int mutex_init (int *) ;
 int * pc87427_group_fan ;
 int * pc87427_group_pwm ;
 int * pc87427_group_temp ;
 int pc87427_init_device (TYPE_1__*) ;
 int pc87427_remove_files (TYPE_1__*) ;
 int pc87427_request_regions (struct platform_device*,int) ;
 int platform_set_drvdata (struct platform_device*,struct pc87427_data*) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int pc87427_probe(struct platform_device *pdev)
{
 struct pc87427_sio_data *sio_data = dev_get_platdata(&pdev->dev);
 struct pc87427_data *data;
 int i, err, res_count;

 data = devm_kzalloc(&pdev->dev, sizeof(struct pc87427_data),
       GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->address[0] = sio_data->address[0];
 data->address[1] = sio_data->address[1];
 res_count = (data->address[0] != 0) + (data->address[1] != 0);

 err = pc87427_request_regions(pdev, res_count);
 if (err)
  return err;

 mutex_init(&data->lock);
 data->name = "pc87427";
 platform_set_drvdata(pdev, data);
 pc87427_init_device(&pdev->dev);


 err = device_create_file(&pdev->dev, &dev_attr_name);
 if (err)
  return err;
 for (i = 0; i < 8; i++) {
  if (!(data->fan_enabled & (1 << i)))
   continue;
  err = sysfs_create_group(&pdev->dev.kobj,
      &pc87427_group_fan[i]);
  if (err)
   goto exit_remove_files;
 }
 for (i = 0; i < 4; i++) {
  if (!(data->pwm_enabled & (1 << i)))
   continue;
  err = sysfs_create_group(&pdev->dev.kobj,
      &pc87427_group_pwm[i]);
  if (err)
   goto exit_remove_files;
 }
 for (i = 0; i < 6; i++) {
  if (!(data->temp_enabled & (1 << i)))
   continue;
  err = sysfs_create_group(&pdev->dev.kobj,
      &pc87427_group_temp[i]);
  if (err)
   goto exit_remove_files;
 }

 data->hwmon_dev = hwmon_device_register(&pdev->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  dev_err(&pdev->dev, "Class registration failed (%d)\n", err);
  goto exit_remove_files;
 }

 return 0;

exit_remove_files:
 pc87427_remove_files(&pdev->dev);
 return err;
}
