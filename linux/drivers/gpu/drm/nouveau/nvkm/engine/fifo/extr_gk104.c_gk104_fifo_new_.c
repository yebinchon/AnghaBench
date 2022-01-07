
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_fifo {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct gk104_fifo_func {int dummy; } ;
struct TYPE_2__ {int work; } ;
struct gk104_fifo {struct nvkm_fifo base; TYPE_1__ recover; struct gk104_fifo_func const* func; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int gk104_fifo_ ;
 int gk104_fifo_recover_work ;
 struct gk104_fifo* kzalloc (int,int ) ;
 int nvkm_fifo_ctor (int *,struct nvkm_device*,int,int,struct nvkm_fifo*) ;

int
gk104_fifo_new_(const struct gk104_fifo_func *func, struct nvkm_device *device,
  int index, int nr, struct nvkm_fifo **pfifo)
{
 struct gk104_fifo *fifo;

 if (!(fifo = kzalloc(sizeof(*fifo), GFP_KERNEL)))
  return -ENOMEM;
 fifo->func = func;
 INIT_WORK(&fifo->recover.work, gk104_fifo_recover_work);
 *pfifo = &fifo->base;

 return nvkm_fifo_ctor(&gk104_fifo_, device, index, nr, &fifo->base);
}
