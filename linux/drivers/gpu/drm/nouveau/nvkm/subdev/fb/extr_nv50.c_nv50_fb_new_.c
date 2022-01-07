
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fb {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nv50_fb_func {int dummy; } ;
struct nv50_fb {struct nvkm_fb base; struct nv50_fb_func const* func; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv50_fb* kzalloc (int,int ) ;
 int nv50_fb_ ;
 int nvkm_fb_ctor (int *,struct nvkm_device*,int,struct nvkm_fb*) ;

int
nv50_fb_new_(const struct nv50_fb_func *func, struct nvkm_device *device,
      int index, struct nvkm_fb **pfb)
{
 struct nv50_fb *fb;

 if (!(fb = kzalloc(sizeof(*fb), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_fb_ctor(&nv50_fb_, device, index, &fb->base);
 fb->func = func;
 *pfb = &fb->base;

 return 0;
}
