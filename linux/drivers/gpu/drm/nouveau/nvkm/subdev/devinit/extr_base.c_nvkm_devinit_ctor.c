
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_devinit_func {int dummy; } ;
struct nvkm_devinit {int force_post; struct nvkm_devinit_func const* func; int subdev; } ;
struct nvkm_device {int cfgopt; } ;


 int nvkm_boolopt (int ,char*,int) ;
 int nvkm_devinit ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,int *) ;

void
nvkm_devinit_ctor(const struct nvkm_devinit_func *func,
    struct nvkm_device *device, int index,
    struct nvkm_devinit *init)
{
 nvkm_subdev_ctor(&nvkm_devinit, device, index, &init->subdev);
 init->func = func;
 init->force_post = nvkm_boolopt(device->cfgopt, "NvForcePost", 0);
}
