
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_oclass {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nv50_disp {int dummy; } ;


 int gv100_disp_curs ;
 int nv50_disp_curs_new_ (int *,struct nv50_disp*,int,int,struct nvkm_oclass const*,void*,int ,struct nvkm_object**) ;

int
gv100_disp_curs_new(const struct nvkm_oclass *oclass, void *argv, u32 argc,
      struct nv50_disp *disp, struct nvkm_object **pobject)
{
 return nv50_disp_curs_new_(&gv100_disp_curs, disp, 73, 73,
       oclass, argv, argc, pobject);
}
