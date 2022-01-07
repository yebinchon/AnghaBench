
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_disp {int vblank; } ;
struct nvif_notify_head_rep_v0 {int dummy; } ;
typedef int rep ;


 int nvkm_event_send (int *,int,int,struct nvif_notify_head_rep_v0*,int) ;

void
nvkm_disp_vblank(struct nvkm_disp *disp, int head)
{
 struct nvif_notify_head_rep_v0 rep = {};
 nvkm_event_send(&disp->vblank, 1, head, &rep, sizeof(rep));
}
