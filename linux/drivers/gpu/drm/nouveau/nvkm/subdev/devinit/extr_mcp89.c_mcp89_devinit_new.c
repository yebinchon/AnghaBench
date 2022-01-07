
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_devinit {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int mcp89_devinit ;
 int nv50_devinit_new_ (int *,struct nvkm_device*,int,struct nvkm_devinit**) ;

int
mcp89_devinit_new(struct nvkm_device *device, int index,
  struct nvkm_devinit **pinit)
{
 return nv50_devinit_new_(&mcp89_devinit, device, index, pinit);
}
