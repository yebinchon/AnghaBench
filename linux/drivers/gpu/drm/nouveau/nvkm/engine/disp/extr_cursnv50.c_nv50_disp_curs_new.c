
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_oclass {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nv50_disp {int dummy; } ;


 int nv50_disp_curs_new_ (int *,struct nv50_disp*,int,int,struct nvkm_oclass const*,void*,int ,struct nvkm_object**) ;
 int nv50_disp_pioc_func ;

int
nv50_disp_curs_new(const struct nvkm_oclass *oclass, void *argv, u32 argc,
     struct nv50_disp *disp, struct nvkm_object **pobject)
{
 return nv50_disp_curs_new_(&nv50_disp_pioc_func, disp, 7, 7,
       oclass, argv, argc, pobject);
}
