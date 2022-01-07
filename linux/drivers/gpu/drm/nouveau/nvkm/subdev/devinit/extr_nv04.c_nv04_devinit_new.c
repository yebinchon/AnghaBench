
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_devinit {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int nv04_devinit ;
 int nv04_devinit_new_ (int *,struct nvkm_device*,int,struct nvkm_devinit**) ;

int
nv04_devinit_new(struct nvkm_device *device, int index,
   struct nvkm_devinit **pinit)
{
 return nv04_devinit_new_(&nv04_devinit, device, index, pinit);
}
