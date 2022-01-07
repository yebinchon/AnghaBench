
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_oclass {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nv50_disp {int dummy; } ;


 int gv100_disp_wndw ;
 int gv100_disp_wndw_mthd ;
 int gv100_disp_wndw_new_ (int *,int *,struct nv50_disp*,int,struct nvkm_oclass const*,void*,int ,struct nvkm_object**) ;

int
gv100_disp_wndw_new(const struct nvkm_oclass *oclass, void *argv, u32 argc,
      struct nv50_disp *disp, struct nvkm_object **pobject)
{
 return gv100_disp_wndw_new_(&gv100_disp_wndw, &gv100_disp_wndw_mthd,
        disp, 1, oclass, argv, argc, pobject);
}
