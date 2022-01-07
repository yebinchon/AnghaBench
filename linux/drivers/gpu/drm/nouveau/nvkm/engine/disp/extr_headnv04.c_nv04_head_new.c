
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_disp {int dummy; } ;


 int nv04_head ;
 int nvkm_head_new_ (int *,struct nvkm_disp*,int) ;

int
nv04_head_new(struct nvkm_disp *disp, int id)
{
 return nvkm_head_new_(&nv04_head, disp, id);
}
