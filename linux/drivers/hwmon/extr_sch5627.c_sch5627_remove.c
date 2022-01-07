
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sch5627_data {scalar_t__ hwmon_dev; scalar_t__ watchdog; } ;
struct TYPE_2__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;


 int hwmon_device_unregister (scalar_t__) ;
 struct sch5627_data* platform_get_drvdata (struct platform_device*) ;
 int sch5627_group ;
 int sch56xx_watchdog_unregister (scalar_t__) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int sch5627_remove(struct platform_device *pdev)
{
 struct sch5627_data *data = platform_get_drvdata(pdev);

 if (data->watchdog)
  sch56xx_watchdog_unregister(data->watchdog);

 if (data->hwmon_dev)
  hwmon_device_unregister(data->hwmon_dev);

 sysfs_remove_group(&pdev->dev.kobj, &sch5627_group);

 return 0;
}
