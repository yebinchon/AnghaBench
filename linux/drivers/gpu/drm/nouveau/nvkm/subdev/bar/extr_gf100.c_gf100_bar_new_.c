
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_device {int cfgopt; } ;
struct nvkm_bar_func {int dummy; } ;
struct nvkm_bar {int dummy; } ;
struct gf100_bar {struct nvkm_bar base; int bar2_halve; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct gf100_bar* kzalloc (int,int ) ;
 int nvkm_bar_ctor (struct nvkm_bar_func const*,struct nvkm_device*,int,struct nvkm_bar*) ;
 int nvkm_boolopt (int ,char*,int) ;

int
gf100_bar_new_(const struct nvkm_bar_func *func, struct nvkm_device *device,
        int index, struct nvkm_bar **pbar)
{
 struct gf100_bar *bar;
 if (!(bar = kzalloc(sizeof(*bar), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_bar_ctor(func, device, index, &bar->base);
 bar->bar2_halve = nvkm_boolopt(device->cfgopt, "NvBar2Halve", 0);
 *pbar = &bar->base;
 return 0;
}
