
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fifo {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int g84_fifo ;
 int nv50_fifo_new_ (int *,struct nvkm_device*,int,struct nvkm_fifo**) ;

int
g84_fifo_new(struct nvkm_device *device, int index, struct nvkm_fifo **pfifo)
{
 return nv50_fifo_new_(&g84_fifo, device, index, pfifo);
}
