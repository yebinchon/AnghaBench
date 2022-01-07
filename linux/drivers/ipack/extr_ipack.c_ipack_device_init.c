
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int parent; int release; int * bus; } ;
struct ipack_device {TYPE_3__ dev; TYPE_2__* bus; scalar_t__ speed_32mhz; int slot; } ;
struct TYPE_8__ {TYPE_1__* ops; int bus_nr; int parent; } ;
struct TYPE_7__ {int (* set_clockrate ) (struct ipack_device*,int) ;scalar_t__ (* reset_timeout ) (struct ipack_device*) ;} ;


 int dev_err (TYPE_3__*,char*) ;
 int dev_set_name (TYPE_3__*,char*,int ,int ) ;
 int dev_warn (TYPE_3__*,char*) ;
 int device_initialize (TYPE_3__*) ;
 int ipack_bus_type ;
 int ipack_device_read_id (struct ipack_device*) ;
 int ipack_device_release ;
 int stub1 (struct ipack_device*,int) ;
 scalar_t__ stub2 (struct ipack_device*) ;
 int stub3 (struct ipack_device*,int) ;

int ipack_device_init(struct ipack_device *dev)
{
 int ret;

 dev->dev.bus = &ipack_bus_type;
 dev->dev.release = ipack_device_release;
 dev->dev.parent = dev->bus->parent;
 dev_set_name(&dev->dev,
       "ipack-dev.%u.%u", dev->bus->bus_nr, dev->slot);
 device_initialize(&dev->dev);

 if (dev->bus->ops->set_clockrate(dev, 8))
  dev_warn(&dev->dev, "failed to switch to 8 MHz operation for reading of device ID.\n");
 if (dev->bus->ops->reset_timeout(dev))
  dev_warn(&dev->dev, "failed to reset potential timeout.");

 ret = ipack_device_read_id(dev);
 if (ret < 0) {
  dev_err(&dev->dev, "error reading device id section.\n");
  return ret;
 }


 if (dev->speed_32mhz) {
  ret = dev->bus->ops->set_clockrate(dev, 32);
  if (ret < 0)
   dev_err(&dev->dev, "failed to switch to 32 MHz operation.\n");
 }

 return 0;
}
