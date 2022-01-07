
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_mc {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gp100_mc_new_ (int *,struct nvkm_device*,int,struct nvkm_mc**) ;
 int tu102_mc ;

int
tu102_mc_new(struct nvkm_device *device, int index, struct nvkm_mc **pmc)
{
 return gp100_mc_new_(&tu102_mc, device, index, pmc);
}
