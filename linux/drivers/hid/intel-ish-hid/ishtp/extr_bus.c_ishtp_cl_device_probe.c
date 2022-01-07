
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl_driver {int (* probe ) (struct ishtp_cl_device*) ;} ;
struct ishtp_cl_device {int dummy; } ;
struct device {int driver; } ;


 int ENODEV ;
 int stub1 (struct ishtp_cl_device*) ;
 struct ishtp_cl_device* to_ishtp_cl_device (struct device*) ;
 struct ishtp_cl_driver* to_ishtp_cl_driver (int ) ;

__attribute__((used)) static int ishtp_cl_device_probe(struct device *dev)
{
 struct ishtp_cl_device *device = to_ishtp_cl_device(dev);
 struct ishtp_cl_driver *driver;

 if (!device)
  return 0;

 driver = to_ishtp_cl_driver(dev->driver);
 if (!driver || !driver->probe)
  return -ENODEV;

 return driver->probe(device);
}
