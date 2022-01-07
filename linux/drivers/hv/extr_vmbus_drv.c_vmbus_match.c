
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_driver {int hvsock; } ;
struct hv_device {int channel; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 struct hv_device* device_to_hv_device (struct device*) ;
 struct hv_driver* drv_to_hv_drv (struct device_driver*) ;
 scalar_t__ hv_vmbus_get_id (struct hv_driver*,struct hv_device*) ;
 scalar_t__ is_hvsock_channel (int ) ;

__attribute__((used)) static int vmbus_match(struct device *device, struct device_driver *driver)
{
 struct hv_driver *drv = drv_to_hv_drv(driver);
 struct hv_device *hv_dev = device_to_hv_device(device);


 if (is_hvsock_channel(hv_dev->channel))
  return drv->hvsock;

 if (hv_vmbus_get_id(drv, hv_dev))
  return 1;

 return 0;
}
