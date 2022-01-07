
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sis5595_data {int hwmon_dev; } ;
struct TYPE_2__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;


 int hwmon_device_unregister (int ) ;
 struct sis5595_data* platform_get_drvdata (struct platform_device*) ;
 int sis5595_group ;
 int sis5595_group_in4 ;
 int sis5595_group_temp1 ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int sis5595_remove(struct platform_device *pdev)
{
 struct sis5595_data *data = platform_get_drvdata(pdev);

 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&pdev->dev.kobj, &sis5595_group);
 sysfs_remove_group(&pdev->dev.kobj, &sis5595_group_in4);
 sysfs_remove_group(&pdev->dev.kobj, &sis5595_group_temp1);

 return 0;
}
