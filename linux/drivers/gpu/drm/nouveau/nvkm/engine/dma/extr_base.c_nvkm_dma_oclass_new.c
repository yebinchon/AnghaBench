
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_oclass {int engine; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_dmaobj {struct nvkm_object object; } ;
struct nvkm_dma {TYPE_1__* func; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {int (* class_new ) (struct nvkm_dma*,struct nvkm_oclass const*,void*,int ,struct nvkm_dmaobj**) ;} ;


 struct nvkm_dma* nvkm_dma (int ) ;
 int stub1 (struct nvkm_dma*,struct nvkm_oclass const*,void*,int ,struct nvkm_dmaobj**) ;

__attribute__((used)) static int
nvkm_dma_oclass_new(struct nvkm_device *device,
      const struct nvkm_oclass *oclass, void *data, u32 size,
      struct nvkm_object **pobject)
{
 struct nvkm_dma *dma = nvkm_dma(oclass->engine);
 struct nvkm_dmaobj *dmaobj = ((void*)0);
 int ret;

 ret = dma->func->class_new(dma, oclass, data, size, &dmaobj);
 if (dmaobj)
  *pobject = &dmaobj->object;
 return ret;
}
