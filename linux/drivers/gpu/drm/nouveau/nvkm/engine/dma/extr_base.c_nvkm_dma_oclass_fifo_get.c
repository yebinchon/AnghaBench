
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_oclass {int base; } ;


 int ARRAY_SIZE (int *) ;
 int * nvkm_dma_sclass ;

__attribute__((used)) static int
nvkm_dma_oclass_fifo_get(struct nvkm_oclass *oclass, int index)
{
 const int count = ARRAY_SIZE(nvkm_dma_sclass);
 if (index < count) {
  oclass->base = nvkm_dma_sclass[index];
  return index;
 }
 return count;
}
