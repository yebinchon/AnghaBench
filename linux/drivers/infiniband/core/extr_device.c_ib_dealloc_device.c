
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* dealloc_driver ) (struct ib_device*) ;} ;
struct ib_device {int dev; int refcount; int client_data; int compat_devs; int index; TYPE_1__ ops; } ;


 int WARN_ON (int) ;
 int devices ;
 int devices_rwsem ;
 int down_write (int *) ;
 int free_netdevs (struct ib_device*) ;
 int put_device (int *) ;
 int rdma_restrack_clean (struct ib_device*) ;
 int refcount_read (int *) ;
 int stub1 (struct ib_device*) ;
 int up_write (int *) ;
 int xa_empty (int *) ;
 int xa_erase (int *,int ) ;
 struct ib_device* xa_load (int *,int ) ;

void ib_dealloc_device(struct ib_device *device)
{
 if (device->ops.dealloc_driver)
  device->ops.dealloc_driver(device);







 down_write(&devices_rwsem);
 if (xa_load(&devices, device->index) == device)
  xa_erase(&devices, device->index);
 up_write(&devices_rwsem);


 free_netdevs(device);

 WARN_ON(!xa_empty(&device->compat_devs));
 WARN_ON(!xa_empty(&device->client_data));
 WARN_ON(refcount_read(&device->refcount));
 rdma_restrack_clean(device);

 put_device(&device->dev);
}
