
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_gpuobj {int parent; int * func; } ;


 int nvkm_done (int ) ;
 int nvkm_gpuobj_func ;

__attribute__((used)) static void
nvkm_gpuobj_release(struct nvkm_gpuobj *gpuobj)
{
 gpuobj->func = &nvkm_gpuobj_func;
 nvkm_done(gpuobj->parent);
}
