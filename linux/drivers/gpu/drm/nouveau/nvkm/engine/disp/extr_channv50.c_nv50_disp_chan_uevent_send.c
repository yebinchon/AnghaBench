
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct nvif_notify_uevent_rep TYPE_1__ ;


struct nv50_disp {int uevent; } ;
typedef int rep ;
struct nvif_notify_uevent_rep {} ;


 int nvkm_event_send (int *,int,int,TYPE_1__*,int) ;

void
nv50_disp_chan_uevent_send(struct nv50_disp *disp, int chid)
{
 struct nvif_notify_uevent_rep {
 } rep;

 nvkm_event_send(&disp->uevent, 1, chid, &rep, sizeof(rep));
}
