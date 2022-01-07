
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_fifo {int uevent; int cevent; int kevent; TYPE_1__* func; } ;
struct nvkm_engine {int dummy; } ;
struct TYPE_2__ {void* (* dtor ) (struct nvkm_fifo*) ;} ;


 int nvkm_event_fini (int *) ;
 struct nvkm_fifo* nvkm_fifo (struct nvkm_engine*) ;
 void* stub1 (struct nvkm_fifo*) ;

__attribute__((used)) static void *
nvkm_fifo_dtor(struct nvkm_engine *engine)
{
 struct nvkm_fifo *fifo = nvkm_fifo(engine);
 void *data = fifo;
 if (fifo->func->dtor)
  data = fifo->func->dtor(fifo);
 nvkm_event_fini(&fifo->kevent);
 nvkm_event_fini(&fifo->cevent);
 nvkm_event_fini(&fifo->uevent);
 return data;
}
