
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_device {int dummy; } ;
struct device {int dummy; } ;


 int __host1x_device_del (struct host1x_device*) ;
 int kfree (struct host1x_device*) ;
 struct host1x_device* to_host1x_device (struct device*) ;

__attribute__((used)) static void host1x_device_release(struct device *dev)
{
 struct host1x_device *device = to_host1x_device(dev);

 __host1x_device_del(device);
 kfree(device);
}
