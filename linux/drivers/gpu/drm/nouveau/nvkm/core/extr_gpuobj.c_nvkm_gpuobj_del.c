
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_gpuobj {int memory; int heap; int node; TYPE_1__* parent; } ;
struct TYPE_2__ {int heap; } ;


 int kfree (struct nvkm_gpuobj*) ;
 int nvkm_memory_unref (int *) ;
 int nvkm_mm_fini (int *) ;
 int nvkm_mm_free (int *,int *) ;

void
nvkm_gpuobj_del(struct nvkm_gpuobj **pgpuobj)
{
 struct nvkm_gpuobj *gpuobj = *pgpuobj;
 if (gpuobj) {
  if (gpuobj->parent)
   nvkm_mm_free(&gpuobj->parent->heap, &gpuobj->node);
  nvkm_mm_fini(&gpuobj->heap);
  nvkm_memory_unref(&gpuobj->memory);
  kfree(*pgpuobj);
  *pgpuobj = ((void*)0);
 }
}
