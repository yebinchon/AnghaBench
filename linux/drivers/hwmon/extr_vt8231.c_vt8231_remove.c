
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vt8231_data {int hwmon_dev; } ;
struct TYPE_2__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ARRAY_SIZE (int *) ;
 int hwmon_device_unregister (int ) ;
 struct vt8231_data* platform_get_drvdata (struct platform_device*) ;
 int sysfs_remove_group (int *,int *) ;
 int vt8231_group ;
 int * vt8231_group_temps ;
 int * vt8231_group_volts ;

__attribute__((used)) static int vt8231_remove(struct platform_device *pdev)
{
 struct vt8231_data *data = platform_get_drvdata(pdev);
 int i;

 hwmon_device_unregister(data->hwmon_dev);

 for (i = 0; i < ARRAY_SIZE(vt8231_group_volts); i++)
  sysfs_remove_group(&pdev->dev.kobj, &vt8231_group_volts[i]);

 for (i = 0; i < ARRAY_SIZE(vt8231_group_temps); i++)
  sysfs_remove_group(&pdev->dev.kobj, &vt8231_group_temps[i]);

 sysfs_remove_group(&pdev->dev.kobj, &vt8231_group);

 return 0;
}
