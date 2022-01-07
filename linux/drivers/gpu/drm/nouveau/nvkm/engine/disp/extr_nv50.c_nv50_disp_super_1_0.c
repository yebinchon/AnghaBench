
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_ior {int dummy; } ;
struct nvkm_head {int dummy; } ;
struct nv50_disp {int dummy; } ;


 int HEAD_DBG (struct nvkm_head*,char*) ;
 int nv50_disp_super_ied_off (struct nvkm_head*,struct nvkm_ior*,int) ;
 struct nvkm_ior* nv50_disp_super_ior_arm (struct nvkm_head*) ;

void
nv50_disp_super_1_0(struct nv50_disp *disp, struct nvkm_head *head)
{
 struct nvkm_ior *ior;


 HEAD_DBG(head, "supervisor 1.0");
 ior = nv50_disp_super_ior_arm(head);
 if (!ior)
  return;


 nv50_disp_super_ied_off(head, ior, 1);
}
