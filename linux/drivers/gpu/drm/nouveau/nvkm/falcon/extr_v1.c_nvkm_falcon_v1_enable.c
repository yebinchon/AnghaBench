
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_falcon {int user; scalar_t__ addr; TYPE_1__* owner; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {struct nvkm_device* device; } ;


 int falcon_v1_wait_idle (struct nvkm_falcon*) ;
 int nvkm_error (int ,char*) ;
 int nvkm_falcon_wr32 (struct nvkm_falcon*,int,int) ;
 int nvkm_wait_msec (struct nvkm_device*,int,scalar_t__,int,int) ;

__attribute__((used)) static int
nvkm_falcon_v1_enable(struct nvkm_falcon *falcon)
{
 struct nvkm_device *device = falcon->owner->device;
 int ret;

 ret = nvkm_wait_msec(device, 10, falcon->addr + 0x10c, 0x6, 0x0);
 if (ret < 0) {
  nvkm_error(falcon->user, "Falcon mem scrubbing timeout\n");
  return ret;
 }

 ret = falcon_v1_wait_idle(falcon);
 if (ret)
  return ret;


 nvkm_falcon_wr32(falcon, 0x010, 0xff);

 return 0;
}
