
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w83627hf_data {int hwmon_dev; } ;
struct TYPE_2__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;


 int hwmon_device_unregister (int ) ;
 struct w83627hf_data* platform_get_drvdata (struct platform_device*) ;
 int sysfs_remove_group (int *,int *) ;
 int w83627hf_group ;
 int w83627hf_group_opt ;

__attribute__((used)) static int w83627hf_remove(struct platform_device *pdev)
{
 struct w83627hf_data *data = platform_get_drvdata(pdev);

 hwmon_device_unregister(data->hwmon_dev);

 sysfs_remove_group(&pdev->dev.kobj, &w83627hf_group);
 sysfs_remove_group(&pdev->dev.kobj, &w83627hf_group_opt);

 return 0;
}
