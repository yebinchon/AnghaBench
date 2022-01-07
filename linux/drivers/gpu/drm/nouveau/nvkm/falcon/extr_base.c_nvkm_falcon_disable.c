
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_falcon {TYPE_2__* func; TYPE_1__* owner; } ;
struct nvkm_device {int dummy; } ;
typedef enum nvkm_devidx { ____Placeholder_nvkm_devidx } nvkm_devidx ;
struct TYPE_4__ {int (* disable ) (struct nvkm_falcon*) ;} ;
struct TYPE_3__ {int index; struct nvkm_device* device; } ;


 int nvkm_mc_disable (struct nvkm_device*,int) ;
 int nvkm_mc_enabled (struct nvkm_device*,int) ;
 int stub1 (struct nvkm_falcon*) ;

void
nvkm_falcon_disable(struct nvkm_falcon *falcon)
{
 struct nvkm_device *device = falcon->owner->device;
 enum nvkm_devidx id = falcon->owner->index;


 if (!nvkm_mc_enabled(device, id))
  return;

 falcon->func->disable(falcon);

 nvkm_mc_disable(device, id);
}
