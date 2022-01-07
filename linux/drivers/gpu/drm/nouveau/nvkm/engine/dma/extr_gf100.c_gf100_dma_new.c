
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_dma {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gf100_dma ;
 int nvkm_dma_new_ (int *,struct nvkm_device*,int,struct nvkm_dma**) ;

int
gf100_dma_new(struct nvkm_device *device, int index, struct nvkm_dma **pdma)
{
 return nvkm_dma_new_(&gf100_dma, device, index, pdma);
}
