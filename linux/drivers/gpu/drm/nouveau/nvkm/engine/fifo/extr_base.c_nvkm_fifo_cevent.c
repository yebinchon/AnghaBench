
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fifo {int cevent; } ;


 int nvkm_event_send (int *,int,int ,int *,int ) ;

void
nvkm_fifo_cevent(struct nvkm_fifo *fifo)
{
 nvkm_event_send(&fifo->cevent, 1, 0, ((void*)0), 0);
}
