
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_hwmon {int client; int hwmon_dev; int * attrs; } ;
struct platform_device {int dev; } ;


 int ARRAY_SIZE (int *) ;
 int hwmon_device_unregister (int ) ;
 struct s3c_hwmon* platform_get_drvdata (struct platform_device*) ;
 int s3c_adc_release (int ) ;
 int s3c_hwmon_remove_attr (int *,int *) ;
 int s3c_hwmon_remove_raw (int *) ;

__attribute__((used)) static int s3c_hwmon_remove(struct platform_device *dev)
{
 struct s3c_hwmon *hwmon = platform_get_drvdata(dev);
 int i;

 s3c_hwmon_remove_raw(&dev->dev);

 for (i = 0; i < ARRAY_SIZE(hwmon->attrs); i++)
  s3c_hwmon_remove_attr(&dev->dev, &hwmon->attrs[i]);

 hwmon_device_unregister(hwmon->hwmon_dev);
 s3c_adc_release(hwmon->client);

 return 0;
}
