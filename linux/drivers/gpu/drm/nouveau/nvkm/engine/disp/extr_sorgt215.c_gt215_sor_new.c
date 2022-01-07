
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_disp {int dummy; } ;


 int SOR ;
 int gt215_sor ;
 int nvkm_ior_new_ (int *,struct nvkm_disp*,int ,int) ;

int
gt215_sor_new(struct nvkm_disp *disp, int id)
{
 return nvkm_ior_new_(&gt215_sor, disp, SOR, id);
}
