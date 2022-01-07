
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_oclass {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_disp {int dummy; } ;
struct nv04_disp_root {struct nvkm_object object; struct nvkm_disp* disp; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv04_disp_root* kzalloc (int,int ) ;
 int nv04_disp_root ;
 int nvkm_object_ctor (int *,struct nvkm_oclass const*,struct nvkm_object*) ;

__attribute__((used)) static int
nv04_disp_root_new(struct nvkm_disp *disp, const struct nvkm_oclass *oclass,
     void *data, u32 size, struct nvkm_object **pobject)
{
 struct nv04_disp_root *root;

 if (!(root = kzalloc(sizeof(*root), GFP_KERNEL)))
  return -ENOMEM;
 root->disp = disp;
 *pobject = &root->object;

 nvkm_object_ctor(&nv04_disp_root, oclass, &root->object);
 return 0;
}
