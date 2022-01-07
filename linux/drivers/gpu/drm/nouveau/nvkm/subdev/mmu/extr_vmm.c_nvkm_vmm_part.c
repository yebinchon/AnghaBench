
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_vmm {int mutex; TYPE_1__* func; } ;
struct nvkm_memory {int dummy; } ;
struct TYPE_2__ {int (* part ) (struct nvkm_vmm*,struct nvkm_memory*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct nvkm_vmm*,struct nvkm_memory*) ;

void
nvkm_vmm_part(struct nvkm_vmm *vmm, struct nvkm_memory *inst)
{
 if (inst && vmm && vmm->func->part) {
  mutex_lock(&vmm->mutex);
  vmm->func->part(vmm, inst);
  mutex_unlock(&vmm->mutex);
 }
}
