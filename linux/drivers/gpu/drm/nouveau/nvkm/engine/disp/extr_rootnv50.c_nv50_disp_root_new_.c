
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_oclass {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_disp {int dummy; } ;
struct nv50_disp_root_func {int dummy; } ;
struct nv50_disp_root {struct nv50_disp* disp; struct nv50_disp_root_func const* func; struct nvkm_object object; } ;
struct nv50_disp {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv50_disp_root* kzalloc (int,int ) ;
 struct nv50_disp* nv50_disp (struct nvkm_disp*) ;
 int nv50_disp_root_ ;
 int nvkm_object_ctor (int *,struct nvkm_oclass const*,struct nvkm_object*) ;

int
nv50_disp_root_new_(const struct nv50_disp_root_func *func,
      struct nvkm_disp *base, const struct nvkm_oclass *oclass,
      void *data, u32 size, struct nvkm_object **pobject)
{
 struct nv50_disp *disp = nv50_disp(base);
 struct nv50_disp_root *root;

 if (!(root = kzalloc(sizeof(*root), GFP_KERNEL)))
  return -ENOMEM;
 *pobject = &root->object;

 nvkm_object_ctor(&nv50_disp_root_, oclass, &root->object);
 root->func = func;
 root->disp = disp;
 return 0;
}
