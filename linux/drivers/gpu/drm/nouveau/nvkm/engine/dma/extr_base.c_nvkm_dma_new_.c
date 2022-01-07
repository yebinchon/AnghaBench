
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_dma_func {int dummy; } ;
struct nvkm_dma {int engine; struct nvkm_dma_func const* func; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_dma* kzalloc (int,int ) ;
 int nvkm_dma ;
 int nvkm_engine_ctor (int *,struct nvkm_device*,int,int,int *) ;

int
nvkm_dma_new_(const struct nvkm_dma_func *func, struct nvkm_device *device,
       int index, struct nvkm_dma **pdma)
{
 struct nvkm_dma *dma;

 if (!(dma = *pdma = kzalloc(sizeof(*dma), GFP_KERNEL)))
  return -ENOMEM;
 dma->func = func;

 return nvkm_engine_ctor(&nvkm_dma, device, index, 1, &dma->engine);
}
