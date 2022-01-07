
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fb_func {int dummy; } ;
struct nvkm_fb {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct gf100_fb {struct nvkm_fb base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct gf100_fb* kzalloc (int,int ) ;
 int nvkm_fb_ctor (struct nvkm_fb_func const*,struct nvkm_device*,int,struct nvkm_fb*) ;

int
gf100_fb_new_(const struct nvkm_fb_func *func, struct nvkm_device *device,
       int index, struct nvkm_fb **pfb)
{
 struct gf100_fb *fb;

 if (!(fb = kzalloc(sizeof(*fb), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_fb_ctor(func, device, index, &fb->base);
 *pfb = &fb->base;

 return 0;
}
