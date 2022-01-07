
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ishtp_cl_driver {int (* reset ) (struct ishtp_cl_device*) ;} ;
struct TYPE_2__ {int driver; } ;
struct ishtp_cl_device {TYPE_1__ dev; int event_work; int * event_cb; } ;


 int cancel_work_sync (int *) ;
 int stub1 (struct ishtp_cl_device*) ;
 struct ishtp_cl_driver* to_ishtp_cl_driver (int ) ;

__attribute__((used)) static int ishtp_cl_device_reset(struct ishtp_cl_device *device)
{
 struct ishtp_cl_driver *driver;
 int ret = 0;

 device->event_cb = ((void*)0);
 cancel_work_sync(&device->event_work);

 driver = to_ishtp_cl_driver(device->dev.driver);
 if (driver && driver->reset)
  ret = driver->reset(device);

 return ret;
}
