
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipack_device {int (* release ) (struct ipack_device*) ;int id; } ;
struct device {int dummy; } ;


 int kfree (int ) ;
 int stub1 (struct ipack_device*) ;
 struct ipack_device* to_ipack_dev (struct device*) ;

__attribute__((used)) static void ipack_device_release(struct device *dev)
{
 struct ipack_device *device = to_ipack_dev(dev);
 kfree(device->id);
 device->release(device);
}
