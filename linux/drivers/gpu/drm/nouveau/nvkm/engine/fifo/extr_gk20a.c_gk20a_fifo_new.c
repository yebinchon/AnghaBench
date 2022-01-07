
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fifo {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gk104_fifo_new_ (int *,struct nvkm_device*,int,int,struct nvkm_fifo**) ;
 int gk20a_fifo ;

int
gk20a_fifo_new(struct nvkm_device *device, int index, struct nvkm_fifo **pfifo)
{
 return gk104_fifo_new_(&gk20a_fifo, device, index, 128, pfifo);
}
