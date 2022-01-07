
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_falcon {scalar_t__ addr; TYPE_1__* owner; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {struct nvkm_device* device; } ;


 int nvkm_falcon_mask (struct nvkm_falcon*,int,int ,int ) ;
 int nvkm_wait_msec (struct nvkm_device*,int,scalar_t__,int ,int) ;

__attribute__((used)) static int
nvkm_falcon_v1_clear_interrupt(struct nvkm_falcon *falcon, u32 mask)
{
 struct nvkm_device *device = falcon->owner->device;
 int ret;


 nvkm_falcon_mask(falcon, 0x004, mask, mask);

 ret = nvkm_wait_msec(device, 10, falcon->addr + 0x008, mask, 0x0);
 if (ret < 0)
  return ret;

 return 0;
}
