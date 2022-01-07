
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via_cputemp_data {scalar_t__ vrm; int hwmon_dev; } ;
struct TYPE_2__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;


 int dev_attr_cpu0_vid ;
 int device_remove_file (TYPE_1__*,int *) ;
 int hwmon_device_unregister (int ) ;
 struct via_cputemp_data* platform_get_drvdata (struct platform_device*) ;
 int sysfs_remove_group (int *,int *) ;
 int via_cputemp_group ;

__attribute__((used)) static int via_cputemp_remove(struct platform_device *pdev)
{
 struct via_cputemp_data *data = platform_get_drvdata(pdev);

 hwmon_device_unregister(data->hwmon_dev);
 if (data->vrm)
  device_remove_file(&pdev->dev, &dev_attr_cpu0_vid);
 sysfs_remove_group(&pdev->dev.kobj, &via_cputemp_group);
 return 0;
}
