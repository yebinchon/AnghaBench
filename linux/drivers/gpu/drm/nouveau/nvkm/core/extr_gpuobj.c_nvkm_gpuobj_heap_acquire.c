
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_gpuobj {void* map; int * func; int memory; } ;


 scalar_t__ likely (void*) ;
 int nvkm_gpuobj_heap_fast ;
 int nvkm_gpuobj_heap_slow ;
 void* nvkm_kmap (int ) ;

__attribute__((used)) static void *
nvkm_gpuobj_heap_acquire(struct nvkm_gpuobj *gpuobj)
{
 gpuobj->map = nvkm_kmap(gpuobj->memory);
 if (likely(gpuobj->map))
  gpuobj->func = &nvkm_gpuobj_heap_fast;
 else
  gpuobj->func = &nvkm_gpuobj_heap_slow;
 return gpuobj->map;
}
