
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dealloc_driver; } ;
struct ib_device {int dev; int unregistration_work; TYPE_1__ ops; int refcount; } ;


 int WARN_ON (int) ;
 int get_device (int *) ;
 int put_device (int *) ;
 int queue_work (int ,int *) ;
 int refcount_read (int *) ;
 int system_unbound_wq ;

void ib_unregister_device_queued(struct ib_device *ib_dev)
{
 WARN_ON(!refcount_read(&ib_dev->refcount));
 WARN_ON(!ib_dev->ops.dealloc_driver);
 get_device(&ib_dev->dev);
 if (!queue_work(system_unbound_wq, &ib_dev->unregistration_work))
  put_device(&ib_dev->dev);
}
