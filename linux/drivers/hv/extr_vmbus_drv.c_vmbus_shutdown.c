
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_driver {int (* shutdown ) (struct hv_device*) ;} ;
struct hv_device {int dummy; } ;
struct device {int driver; } ;


 struct hv_device* device_to_hv_device (struct device*) ;
 struct hv_driver* drv_to_hv_drv (int ) ;
 int stub1 (struct hv_device*) ;

__attribute__((used)) static void vmbus_shutdown(struct device *child_device)
{
 struct hv_driver *drv;
 struct hv_device *dev = device_to_hv_device(child_device);



 if (!child_device->driver)
  return;

 drv = drv_to_hv_drv(child_device->driver);

 if (drv->shutdown)
  drv->shutdown(dev);
}
