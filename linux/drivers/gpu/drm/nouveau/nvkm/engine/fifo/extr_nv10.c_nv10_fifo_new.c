
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fifo {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int nv04_fifo_new_ (int *,struct nvkm_device*,int,int,int ,struct nvkm_fifo**) ;
 int nv10_fifo ;
 int nv10_fifo_ramfc ;

int
nv10_fifo_new(struct nvkm_device *device, int index, struct nvkm_fifo **pfifo)
{
 return nv04_fifo_new_(&nv10_fifo, device, index, 32,
         nv10_fifo_ramfc, pfifo);
}
