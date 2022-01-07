
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_device_modify {int dummy; } ;
struct TYPE_2__ {int (* modify_device ) (struct ib_device*,int,struct ib_device_modify*) ;} ;
struct ib_device {TYPE_1__ ops; } ;


 int ENOSYS ;
 int stub1 (struct ib_device*,int,struct ib_device_modify*) ;

int ib_modify_device(struct ib_device *device,
       int device_modify_mask,
       struct ib_device_modify *device_modify)
{
 if (!device->ops.modify_device)
  return -ENOSYS;

 return device->ops.modify_device(device, device_modify_mask,
      device_modify);
}
