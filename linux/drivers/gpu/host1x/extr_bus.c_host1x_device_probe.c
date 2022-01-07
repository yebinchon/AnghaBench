
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_driver {int (* probe ) (struct host1x_device*) ;} ;
struct host1x_device {int dummy; } ;
struct device {int driver; } ;


 int stub1 (struct host1x_device*) ;
 struct host1x_device* to_host1x_device (struct device*) ;
 struct host1x_driver* to_host1x_driver (int ) ;

__attribute__((used)) static int host1x_device_probe(struct device *dev)
{
 struct host1x_driver *driver = to_host1x_driver(dev->driver);
 struct host1x_device *device = to_host1x_device(dev);

 if (driver->probe)
  return driver->probe(device);

 return 0;
}
