
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fifo_func {scalar_t__ uevent_init; } ;
struct nvkm_fifo {int nr; int kevent; int cevent; int uevent; int engine; int mask; int lock; int chan; struct nvkm_fifo_func const* func; } ;
struct nvkm_device {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int NVKM_FIFO_CHID_NR ;
 scalar_t__ WARN_ON (int) ;
 int bitmap_clear (int ,int ,int) ;
 int nvkm_engine_ctor (int *,struct nvkm_device*,int,int,int *) ;
 int nvkm_event_init (int *,int,int,int *) ;
 int nvkm_fifo ;
 int nvkm_fifo_cevent_func ;
 int nvkm_fifo_kevent_func ;
 int nvkm_fifo_uevent_func ;
 int spin_lock_init (int *) ;

int
nvkm_fifo_ctor(const struct nvkm_fifo_func *func, struct nvkm_device *device,
        int index, int nr, struct nvkm_fifo *fifo)
{
 int ret;

 fifo->func = func;
 INIT_LIST_HEAD(&fifo->chan);
 spin_lock_init(&fifo->lock);

 if (WARN_ON(fifo->nr > NVKM_FIFO_CHID_NR))
  fifo->nr = NVKM_FIFO_CHID_NR;
 else
  fifo->nr = nr;
 bitmap_clear(fifo->mask, 0, fifo->nr);

 ret = nvkm_engine_ctor(&nvkm_fifo, device, index, 1, &fifo->engine);
 if (ret)
  return ret;

 if (func->uevent_init) {
  ret = nvkm_event_init(&nvkm_fifo_uevent_func, 1, 1,
          &fifo->uevent);
  if (ret)
   return ret;
 }

 ret = nvkm_event_init(&nvkm_fifo_cevent_func, 1, 1, &fifo->cevent);
 if (ret)
  return ret;

 return nvkm_event_init(&nvkm_fifo_kevent_func, 1, nr, &fifo->kevent);
}
