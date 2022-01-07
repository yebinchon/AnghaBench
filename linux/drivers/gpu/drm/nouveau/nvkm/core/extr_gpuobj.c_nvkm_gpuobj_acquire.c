
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void u8 ;
struct nvkm_gpuobj {void* map; int * func; TYPE_1__* node; int parent; } ;
struct TYPE_2__ {int offset; } ;


 scalar_t__ likely (void*) ;
 int nvkm_gpuobj_fast ;
 int nvkm_gpuobj_slow ;
 void* nvkm_kmap (int ) ;

__attribute__((used)) static void *
nvkm_gpuobj_acquire(struct nvkm_gpuobj *gpuobj)
{
 gpuobj->map = nvkm_kmap(gpuobj->parent);
 if (likely(gpuobj->map)) {
  gpuobj->map = (u8 *)gpuobj->map + gpuobj->node->offset;
  gpuobj->func = &nvkm_gpuobj_fast;
 } else {
  gpuobj->func = &nvkm_gpuobj_slow;
 }
 return gpuobj->map;
}
