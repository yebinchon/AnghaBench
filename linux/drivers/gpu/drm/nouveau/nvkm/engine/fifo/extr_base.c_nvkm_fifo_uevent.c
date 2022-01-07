
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fifo {int uevent; } ;
struct nvif_notify_uevent_rep {int dummy; } ;
typedef int rep ;


 int nvkm_event_send (int *,int,int ,struct nvif_notify_uevent_rep*,int) ;

void
nvkm_fifo_uevent(struct nvkm_fifo *fifo)
{
 struct nvif_notify_uevent_rep rep = {
 };
 nvkm_event_send(&fifo->uevent, 1, 0, &rep, sizeof(rep));
}
