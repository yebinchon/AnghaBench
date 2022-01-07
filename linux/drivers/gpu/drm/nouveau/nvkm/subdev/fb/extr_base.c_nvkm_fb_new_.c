
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fb_func {int dummy; } ;
struct nvkm_fb {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_fb* kzalloc (int,int ) ;
 int nvkm_fb_ctor (struct nvkm_fb_func const*,struct nvkm_device*,int,struct nvkm_fb*) ;

int
nvkm_fb_new_(const struct nvkm_fb_func *func, struct nvkm_device *device,
      int index, struct nvkm_fb **pfb)
{
 if (!(*pfb = kzalloc(sizeof(**pfb), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_fb_ctor(func, device, index, *pfb);
 return 0;
}
