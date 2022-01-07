
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ alloc_hw_stats; } ;
struct ib_device {TYPE_1__ ops; int coredev; } ;


 int ib_setup_port_attrs (int *) ;
 int setup_hw_stats (struct ib_device*,int *,int ) ;

int ib_device_register_sysfs(struct ib_device *device)
{
 int ret;

 ret = ib_setup_port_attrs(&device->coredev);
 if (ret)
  return ret;

 if (device->ops.alloc_hw_stats)
  setup_hw_stats(device, ((void*)0), 0);

 return 0;
}
