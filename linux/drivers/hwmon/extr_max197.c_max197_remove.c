
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct max197_data {int hwmon_dev; } ;


 int hwmon_device_unregister (int ) ;
 int max197_sysfs_group ;
 struct max197_data* platform_get_drvdata (struct platform_device*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int max197_remove(struct platform_device *pdev)
{
 struct max197_data *data = platform_get_drvdata(pdev);

 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&pdev->dev.kobj, &max197_sysfs_group);

 return 0;
}
