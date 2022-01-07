
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_hwmon_match ;
 int devm_hwmon_release ;
 int devres_release (struct device*,int ,int ,struct device*) ;

void devm_hwmon_device_unregister(struct device *dev)
{
 WARN_ON(devres_release(dev, devm_hwmon_release, devm_hwmon_match, dev));
}
