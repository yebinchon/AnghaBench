
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_driver {int (* shutdown ) (struct host1x_device*) ;} ;
struct host1x_device {int dummy; } ;
struct device {int driver; } ;


 int stub1 (struct host1x_device*) ;
 struct host1x_device* to_host1x_device (struct device*) ;
 struct host1x_driver* to_host1x_driver (int ) ;

__attribute__((used)) static void host1x_device_shutdown(struct device *dev)
{
 struct host1x_driver *driver = to_host1x_driver(dev->driver);
 struct host1x_device *device = to_host1x_device(dev);

 if (driver->shutdown)
  driver->shutdown(device);
}
