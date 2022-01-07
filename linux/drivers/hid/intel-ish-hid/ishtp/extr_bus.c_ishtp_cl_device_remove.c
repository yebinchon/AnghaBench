
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl_driver {int (* remove ) (struct ishtp_cl_device*) ;} ;
struct ishtp_cl_device {int event_work; int * event_cb; } ;
struct device {int * driver; } ;


 int cancel_work_sync (int *) ;
 int stub1 (struct ishtp_cl_device*) ;
 struct ishtp_cl_device* to_ishtp_cl_device (struct device*) ;
 struct ishtp_cl_driver* to_ishtp_cl_driver (int *) ;

__attribute__((used)) static int ishtp_cl_device_remove(struct device *dev)
{
 struct ishtp_cl_device *device = to_ishtp_cl_device(dev);
 struct ishtp_cl_driver *driver;

 if (!device || !dev->driver)
  return 0;

 if (device->event_cb) {
  device->event_cb = ((void*)0);
  cancel_work_sync(&device->event_work);
 }

 driver = to_ishtp_cl_driver(dev->driver);
 if (!driver->remove) {
  dev->driver = ((void*)0);

  return 0;
 }

 return driver->remove(device);
}
