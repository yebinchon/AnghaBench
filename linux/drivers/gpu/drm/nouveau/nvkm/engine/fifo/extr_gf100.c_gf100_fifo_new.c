
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_fifo {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {int work; } ;
struct gf100_fifo {struct nvkm_fifo base; TYPE_1__ recover; int chan; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int gf100_fifo ;
 int gf100_fifo_recover_work ;
 struct gf100_fifo* kzalloc (int,int ) ;
 int nvkm_fifo_ctor (int *,struct nvkm_device*,int,int,struct nvkm_fifo*) ;

int
gf100_fifo_new(struct nvkm_device *device, int index, struct nvkm_fifo **pfifo)
{
 struct gf100_fifo *fifo;

 if (!(fifo = kzalloc(sizeof(*fifo), GFP_KERNEL)))
  return -ENOMEM;
 INIT_LIST_HEAD(&fifo->chan);
 INIT_WORK(&fifo->recover.work, gf100_fifo_recover_work);
 *pfifo = &fifo->base;

 return nvkm_fifo_ctor(&gf100_fifo, device, index, 128, &fifo->base);
}
