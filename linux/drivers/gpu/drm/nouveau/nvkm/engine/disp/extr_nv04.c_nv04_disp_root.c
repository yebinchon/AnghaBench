
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_disp_oclass {int dummy; } ;
struct nvkm_disp {int dummy; } ;


 struct nvkm_disp_oclass const nv04_disp_root_oclass ;

__attribute__((used)) static const struct nvkm_disp_oclass *
nv04_disp_root(struct nvkm_disp *disp)
{
 return &nv04_disp_root_oclass;
}
