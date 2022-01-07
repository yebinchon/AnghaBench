
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int kfree (int ) ;
 int to_hwmon_device (struct device*) ;

__attribute__((used)) static void hwmon_dev_release(struct device *dev)
{
 kfree(to_hwmon_device(dev));
}
