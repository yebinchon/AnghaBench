
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int driver_id; } ;
struct ib_device {TYPE_1__ ops; } ;
typedef enum rdma_driver_id { ____Placeholder_rdma_driver_id } rdma_driver_id ;


 int RDMA_DRIVER_UNKNOWN ;
 struct ib_device* __ib_device_get_by_name (char const*) ;
 int devices_rwsem ;
 int down_read (int *) ;
 int ib_device_try_get (struct ib_device*) ;
 int up_read (int *) ;

struct ib_device *ib_device_get_by_name(const char *name,
     enum rdma_driver_id driver_id)
{
 struct ib_device *device;

 down_read(&devices_rwsem);
 device = __ib_device_get_by_name(name);
 if (device && driver_id != RDMA_DRIVER_UNKNOWN &&
     device->ops.driver_id != driver_id)
  device = ((void*)0);

 if (device) {
  if (!ib_device_try_get(device))
   device = ((void*)0);
 }
 up_read(&devices_rwsem);
 return device;
}
