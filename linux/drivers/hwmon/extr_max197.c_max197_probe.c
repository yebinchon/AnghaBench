
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_7__ {int kobj; } ;
struct platform_device {TYPE_2__ dev; } ;
struct max197_platform_data {int * convert; } ;
struct max197_data {int scale; int hwmon_dev; scalar_t__* ctrl_bytes; int limit; int lock; struct max197_platform_data* pdata; } ;
typedef enum max197_chips { ____Placeholder_max197_chips } max197_chips ;
struct TYPE_6__ {int driver_data; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAX197_LIMIT ;
 int MAX197_NUM_CH ;
 int MAX199_LIMIT ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_2__*,char*) ;
 struct max197_platform_data* dev_get_platdata (TYPE_2__*) ;
 struct max197_data* devm_kzalloc (TYPE_2__*,int,int ) ;
 int hwmon_device_register (TYPE_2__*) ;
 int max197 ;
 int max197_sysfs_group ;
 int mutex_init (int *) ;
 TYPE_1__* platform_get_device_id (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,struct max197_data*) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int max197_probe(struct platform_device *pdev)
{
 int ch, ret;
 struct max197_data *data;
 struct max197_platform_data *pdata = dev_get_platdata(&pdev->dev);
 enum max197_chips chip = platform_get_device_id(pdev)->driver_data;

 if (pdata == ((void*)0)) {
  dev_err(&pdev->dev, "no platform data supplied\n");
  return -EINVAL;
 }

 if (pdata->convert == ((void*)0)) {
  dev_err(&pdev->dev, "no convert function supplied\n");
  return -EINVAL;
 }

 data = devm_kzalloc(&pdev->dev, sizeof(struct max197_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->pdata = pdata;
 mutex_init(&data->lock);

 if (chip == max197) {
  data->limit = MAX197_LIMIT;
  data->scale = 1;
 } else {
  data->limit = MAX199_LIMIT;
  data->scale = 0;
 }

 for (ch = 0; ch < MAX197_NUM_CH; ch++)
  data->ctrl_bytes[ch] = (u8) ch;

 platform_set_drvdata(pdev, data);

 ret = sysfs_create_group(&pdev->dev.kobj, &max197_sysfs_group);
 if (ret) {
  dev_err(&pdev->dev, "sysfs create group failed\n");
  return ret;
 }

 data->hwmon_dev = hwmon_device_register(&pdev->dev);
 if (IS_ERR(data->hwmon_dev)) {
  ret = PTR_ERR(data->hwmon_dev);
  dev_err(&pdev->dev, "hwmon device register failed\n");
  goto error;
 }

 return 0;

error:
 sysfs_remove_group(&pdev->dev.kobj, &max197_sysfs_group);
 return ret;
}
