
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {TYPE_2__* parent; } ;
struct fpga_region {int mutex; struct device dev; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int owner; } ;


 int dev_dbg (struct device*,char*) ;
 int module_put (int ) ;
 int mutex_unlock (int *) ;
 int put_device (struct device*) ;

__attribute__((used)) static void fpga_region_put(struct fpga_region *region)
{
 struct device *dev = &region->dev;

 dev_dbg(dev, "put\n");

 module_put(dev->parent->driver->owner);
 put_device(dev);
 mutex_unlock(&region->mutex);
}
