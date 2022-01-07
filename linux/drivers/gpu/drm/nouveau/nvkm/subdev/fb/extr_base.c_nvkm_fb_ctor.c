
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int regions; } ;
struct nvkm_fb_func {int default_bigpage; TYPE_2__ tile; } ;
struct TYPE_3__ {int regions; } ;
struct nvkm_fb {struct nvkm_fb_func const* func; int page; TYPE_1__ tile; int subdev; } ;
struct nvkm_device {int cfgopt; } ;


 int nvkm_fb ;
 int nvkm_longopt (int ,char*,int ) ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,int *) ;

void
nvkm_fb_ctor(const struct nvkm_fb_func *func, struct nvkm_device *device,
      int index, struct nvkm_fb *fb)
{
 nvkm_subdev_ctor(&nvkm_fb, device, index, &fb->subdev);
 fb->func = func;
 fb->tile.regions = fb->func->tile.regions;
 fb->page = nvkm_longopt(device->cfgopt, "NvFbBigPage",
    fb->func->default_bigpage);
}
