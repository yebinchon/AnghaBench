
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_devinit {int subdev; } ;


 int nvbios_post (int *,int) ;

int
nv04_devinit_post(struct nvkm_devinit *init, bool execute)
{
 return nvbios_post(&init->subdev, execute);
}
