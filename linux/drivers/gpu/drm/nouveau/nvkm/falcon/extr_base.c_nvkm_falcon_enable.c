
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_falcon {TYPE_2__* func; TYPE_1__* owner; } ;
struct nvkm_device {int dummy; } ;
typedef enum nvkm_devidx { ____Placeholder_nvkm_devidx } nvkm_devidx ;
struct TYPE_4__ {int (* enable ) (struct nvkm_falcon*) ;} ;
struct TYPE_3__ {int index; struct nvkm_device* device; } ;


 int nvkm_mc_disable (struct nvkm_device*,int) ;
 int nvkm_mc_enable (struct nvkm_device*,int) ;
 int stub1 (struct nvkm_falcon*) ;

int
nvkm_falcon_enable(struct nvkm_falcon *falcon)
{
 struct nvkm_device *device = falcon->owner->device;
 enum nvkm_devidx id = falcon->owner->index;
 int ret;

 nvkm_mc_enable(device, id);
 ret = falcon->func->enable(falcon);
 if (ret) {
  nvkm_mc_disable(device, id);
  return ret;
 }

 return 0;
}
