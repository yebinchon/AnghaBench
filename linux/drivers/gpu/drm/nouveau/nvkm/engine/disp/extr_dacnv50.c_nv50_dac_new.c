
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_disp {int dummy; } ;


 int DAC ;
 int nv50_dac ;
 int nvkm_ior_new_ (int *,struct nvkm_disp*,int ,int) ;

int
nv50_dac_new(struct nvkm_disp *disp, int id)
{
 return nvkm_ior_new_(&nv50_dac, disp, DAC, id);
}
