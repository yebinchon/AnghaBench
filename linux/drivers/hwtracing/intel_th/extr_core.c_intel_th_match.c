
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_th_driver {int disable; int enable; } ;
struct intel_th_device {scalar_t__ type; int name; } ;
struct device_driver {int name; } ;
struct device {int dummy; } ;


 scalar_t__ INTEL_TH_SWITCH ;
 int strcmp (int ,int ) ;
 struct intel_th_device* to_intel_th_device (struct device*) ;
 struct intel_th_driver* to_intel_th_driver (struct device_driver*) ;

__attribute__((used)) static int intel_th_match(struct device *dev, struct device_driver *driver)
{
 struct intel_th_driver *thdrv = to_intel_th_driver(driver);
 struct intel_th_device *thdev = to_intel_th_device(dev);

 if (thdev->type == INTEL_TH_SWITCH &&
     (!thdrv->enable || !thdrv->disable))
  return 0;

 return !strcmp(thdev->name, driver->name);
}
