
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_dma {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gf119_dma ;
 int nvkm_dma_new_ (int *,struct nvkm_device*,int,struct nvkm_dma**) ;

int
gf119_dma_new(struct nvkm_device *device, int index, struct nvkm_dma **pdma)
{
 return nvkm_dma_new_(&gf119_dma, device, index, pdma);
}
