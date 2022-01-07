
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int hwmon_device_unregister (struct device*) ;

__attribute__((used)) static void devm_hwmon_release(struct device *dev, void *res)
{
 struct device *hwdev = *(struct device **)res;

 hwmon_device_unregister(hwdev);
}
