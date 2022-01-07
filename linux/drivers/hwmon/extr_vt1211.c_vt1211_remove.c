
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt1211_data {int hwmon_dev; } ;
struct platform_device {int dummy; } ;


 int hwmon_device_unregister (int ) ;
 struct vt1211_data* platform_get_drvdata (struct platform_device*) ;
 int vt1211_remove_sysfs (struct platform_device*) ;

__attribute__((used)) static int vt1211_remove(struct platform_device *pdev)
{
 struct vt1211_data *data = platform_get_drvdata(pdev);

 hwmon_device_unregister(data->hwmon_dev);
 vt1211_remove_sysfs(pdev);

 return 0;
}
