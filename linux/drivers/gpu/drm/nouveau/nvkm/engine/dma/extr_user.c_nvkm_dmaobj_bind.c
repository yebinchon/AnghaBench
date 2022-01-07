
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_object {int dummy; } ;
struct nvkm_gpuobj {int dummy; } ;
struct nvkm_dmaobj {TYPE_1__* func; } ;
struct TYPE_2__ {int (* bind ) (struct nvkm_dmaobj*,struct nvkm_gpuobj*,int,struct nvkm_gpuobj**) ;} ;


 struct nvkm_dmaobj* nvkm_dmaobj (struct nvkm_object*) ;
 int stub1 (struct nvkm_dmaobj*,struct nvkm_gpuobj*,int,struct nvkm_gpuobj**) ;

__attribute__((used)) static int
nvkm_dmaobj_bind(struct nvkm_object *base, struct nvkm_gpuobj *gpuobj,
   int align, struct nvkm_gpuobj **pgpuobj)
{
 struct nvkm_dmaobj *dmaobj = nvkm_dmaobj(base);
 return dmaobj->func->bind(dmaobj, gpuobj, align, pgpuobj);
}
