
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via686a_data {int hwmon_dev; } ;
struct TYPE_2__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;


 int hwmon_device_unregister (int ) ;
 struct via686a_data* platform_get_drvdata (struct platform_device*) ;
 int sysfs_remove_group (int *,int *) ;
 int via686a_group ;

__attribute__((used)) static int via686a_remove(struct platform_device *pdev)
{
 struct via686a_data *data = platform_get_drvdata(pdev);

 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&pdev->dev.kobj, &via686a_group);

 return 0;
}
