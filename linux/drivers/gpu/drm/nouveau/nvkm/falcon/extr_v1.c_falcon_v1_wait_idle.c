
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_falcon {scalar_t__ addr; TYPE_1__* owner; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {struct nvkm_device* device; } ;


 int nvkm_wait_msec (struct nvkm_device*,int,scalar_t__,int,int) ;

__attribute__((used)) static int
falcon_v1_wait_idle(struct nvkm_falcon *falcon)
{
 struct nvkm_device *device = falcon->owner->device;
 int ret;

 ret = nvkm_wait_msec(device, 10, falcon->addr + 0x04c, 0xffff, 0x0);
 if (ret < 0)
  return ret;

 return 0;
}
