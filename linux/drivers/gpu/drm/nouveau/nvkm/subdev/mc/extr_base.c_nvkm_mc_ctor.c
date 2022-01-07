
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_mc_func {int dummy; } ;
struct nvkm_mc {struct nvkm_mc_func const* func; int subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_mc ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,int *) ;

void
nvkm_mc_ctor(const struct nvkm_mc_func *func, struct nvkm_device *device,
      int index, struct nvkm_mc *mc)
{
 nvkm_subdev_ctor(&nvkm_mc, device, index, &mc->subdev);
 mc->func = func;
}
