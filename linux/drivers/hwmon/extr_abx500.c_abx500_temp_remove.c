
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct abx500_temp {int hwmon_dev; int work; } ;


 int abx500_temp_group ;
 int cancel_delayed_work_sync (int *) ;
 int hwmon_device_unregister (int ) ;
 struct abx500_temp* platform_get_drvdata (struct platform_device*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int abx500_temp_remove(struct platform_device *pdev)
{
 struct abx500_temp *data = platform_get_drvdata(pdev);

 cancel_delayed_work_sync(&data->work);
 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&pdev->dev.kobj, &abx500_temp_group);

 return 0;
}
