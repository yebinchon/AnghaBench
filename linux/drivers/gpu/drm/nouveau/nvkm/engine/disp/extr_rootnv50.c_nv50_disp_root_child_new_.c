
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_oclass {struct nv50_disp_user* priv; int parent; } ;
struct nvkm_object {int dummy; } ;
struct nv50_disp_user {int (* ctor ) (struct nvkm_oclass const*,void*,int ,struct nv50_disp*,struct nvkm_object**) ;} ;
struct nv50_disp {int dummy; } ;
struct TYPE_2__ {struct nv50_disp* disp; } ;


 TYPE_1__* nv50_disp_root (int ) ;
 int stub1 (struct nvkm_oclass const*,void*,int ,struct nv50_disp*,struct nvkm_object**) ;

__attribute__((used)) static int
nv50_disp_root_child_new_(const struct nvkm_oclass *oclass,
     void *argv, u32 argc, struct nvkm_object **pobject)
{
 struct nv50_disp *disp = nv50_disp_root(oclass->parent)->disp;
 const struct nv50_disp_user *user = oclass->priv;
 return user->ctor(oclass, argv, argc, disp, pobject);
}
