
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i3c_driver {int (* probe ) (struct i3c_device*) ;} ;
struct i3c_device {int dummy; } ;
struct device {int driver; } ;


 struct i3c_device* dev_to_i3cdev (struct device*) ;
 struct i3c_driver* drv_to_i3cdrv (int ) ;
 int stub1 (struct i3c_device*) ;

__attribute__((used)) static int i3c_device_probe(struct device *dev)
{
 struct i3c_device *i3cdev = dev_to_i3cdev(dev);
 struct i3c_driver *driver = drv_to_i3cdrv(dev->driver);

 return driver->probe(i3cdev);
}
