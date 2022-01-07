
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_driver {int (* remove ) (struct hv_device*) ;} ;
struct hv_device {int dummy; } ;
struct device {scalar_t__ driver; } ;


 struct hv_device* device_to_hv_device (struct device*) ;
 struct hv_driver* drv_to_hv_drv (scalar_t__) ;
 int stub1 (struct hv_device*) ;

__attribute__((used)) static int vmbus_remove(struct device *child_device)
{
 struct hv_driver *drv;
 struct hv_device *dev = device_to_hv_device(child_device);

 if (child_device->driver) {
  drv = drv_to_hv_drv(child_device->driver);
  if (drv->remove)
   drv->remove(dev);
 }

 return 0;
}
