
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fifo {int kevent; } ;


 int nvkm_event_send (int *,int,int,int *,int ) ;

void
nvkm_fifo_kevent(struct nvkm_fifo *fifo, int chid)
{
 nvkm_event_send(&fifo->kevent, 1, chid, ((void*)0), 0);
}
