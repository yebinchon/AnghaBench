
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_ior {TYPE_2__* func; } ;
struct TYPE_3__ {int hz; } ;
struct nvkm_head {TYPE_1__ asy; } ;
struct nv50_disp {int dummy; } ;
struct TYPE_4__ {int (* war_3 ) (struct nvkm_ior*) ;} ;


 int HEAD_DBG (struct nvkm_head*,char*) ;
 int nv50_disp_super_ied_on (struct nvkm_head*,struct nvkm_ior*,int,int) ;
 struct nvkm_ior* nv50_disp_super_ior_asy (struct nvkm_head*) ;
 int stub1 (struct nvkm_ior*) ;

void
nv50_disp_super_3_0(struct nv50_disp *disp, struct nvkm_head *head)
{
 struct nvkm_ior *ior;


 HEAD_DBG(head, "supervisor 3.0");
 ior = nv50_disp_super_ior_asy(head);
 if (!ior)
  return;


 nv50_disp_super_ied_on(head, ior, 1, head->asy.hz / 1000);


 if (ior->func->war_3)
  ior->func->war_3(ior);
}
