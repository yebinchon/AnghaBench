
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipack_driver {TYPE_1__* ops; } ;
struct ipack_device {int dummy; } ;
struct device {int driver; } ;
struct TYPE_2__ {int (* remove ) (struct ipack_device*) ;} ;


 int EINVAL ;
 int stub1 (struct ipack_device*) ;
 struct ipack_device* to_ipack_dev (struct device*) ;
 struct ipack_driver* to_ipack_driver (int ) ;

__attribute__((used)) static int ipack_bus_remove(struct device *device)
{
 struct ipack_device *dev = to_ipack_dev(device);
 struct ipack_driver *drv = to_ipack_driver(device->driver);

 if (!drv->ops->remove)
  return -EINVAL;

 drv->ops->remove(dev);
 return 0;
}
