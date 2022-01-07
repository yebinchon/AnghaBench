
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fifo {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int nv04_fifo ;
 int nv04_fifo_new_ (int *,struct nvkm_device*,int,int,int ,struct nvkm_fifo**) ;
 int nv04_fifo_ramfc ;

int
nv04_fifo_new(struct nvkm_device *device, int index, struct nvkm_fifo **pfifo)
{
 return nv04_fifo_new_(&nv04_fifo, device, index, 16,
         nv04_fifo_ramfc, pfifo);
}
