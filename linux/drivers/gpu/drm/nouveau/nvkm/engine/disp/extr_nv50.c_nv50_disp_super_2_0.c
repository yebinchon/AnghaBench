
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_outp {TYPE_2__* func; } ;
struct TYPE_3__ {int head; struct nvkm_outp* outp; } ;
struct nvkm_ior {TYPE_1__ arm; } ;
struct nvkm_head {int id; } ;
struct nv50_disp {int dummy; } ;
struct TYPE_4__ {int (* disable ) (struct nvkm_outp*,struct nvkm_ior*) ;} ;


 int HEAD_DBG (struct nvkm_head*,char*) ;
 int nv50_disp_super_ied_off (struct nvkm_head*,struct nvkm_ior*,int) ;
 struct nvkm_ior* nv50_disp_super_ior_arm (struct nvkm_head*) ;
 int stub1 (struct nvkm_outp*,struct nvkm_ior*) ;

void
nv50_disp_super_2_0(struct nv50_disp *disp, struct nvkm_head *head)
{
 struct nvkm_outp *outp;
 struct nvkm_ior *ior;


 HEAD_DBG(head, "supervisor 2.0");
 ior = nv50_disp_super_ior_arm(head);
 if (!ior)
  return;


 nv50_disp_super_ied_off(head, ior, 2);




 if (ior->arm.head == (1 << head->id)) {
  if ((outp = ior->arm.outp) && outp->func->disable)
   outp->func->disable(outp, ior);
 }
}
