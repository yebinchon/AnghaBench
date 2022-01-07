
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct f71805f_data {int hwmon_dev; } ;


 int f71805f_group ;
 int * f71805f_group_optin ;
 int f71805f_group_pwm_freq ;
 int hwmon_device_unregister (int ) ;
 struct f71805f_data* platform_get_drvdata (struct platform_device*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int f71805f_remove(struct platform_device *pdev)
{
 struct f71805f_data *data = platform_get_drvdata(pdev);
 int i;

 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&pdev->dev.kobj, &f71805f_group);
 for (i = 0; i < 4; i++)
  sysfs_remove_group(&pdev->dev.kobj, &f71805f_group_optin[i]);
 sysfs_remove_group(&pdev->dev.kobj, &f71805f_group_pwm_freq);

 return 0;
}
