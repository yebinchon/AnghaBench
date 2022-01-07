
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i3c_device_info {int dummy; } ;
struct i3c_device {int bus; TYPE_1__* desc; } ;
struct TYPE_2__ {struct i3c_device_info info; } ;


 int i3c_bus_normaluse_lock (int ) ;
 int i3c_bus_normaluse_unlock (int ) ;

void i3c_device_get_info(struct i3c_device *dev,
    struct i3c_device_info *info)
{
 if (!info)
  return;

 i3c_bus_normaluse_lock(dev->bus);
 if (dev->desc)
  *info = dev->desc->info;
 i3c_bus_normaluse_unlock(dev->bus);
}
