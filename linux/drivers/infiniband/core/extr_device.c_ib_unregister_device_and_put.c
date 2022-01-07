
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dealloc_driver; } ;
struct ib_device {int dev; TYPE_1__ ops; } ;


 int WARN_ON (int) ;
 int __ib_unregister_device (struct ib_device*) ;
 int get_device (int *) ;
 int ib_device_put (struct ib_device*) ;
 int put_device (int *) ;

void ib_unregister_device_and_put(struct ib_device *ib_dev)
{
 WARN_ON(!ib_dev->ops.dealloc_driver);
 get_device(&ib_dev->dev);
 ib_device_put(ib_dev);
 __ib_unregister_device(ib_dev);
 put_device(&ib_dev->dev);
}
