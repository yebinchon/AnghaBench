
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fb {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int nv50_fb ;
 int nv50_fb_new_ (int *,struct nvkm_device*,int,struct nvkm_fb**) ;

int
nv50_fb_new(struct nvkm_device *device, int index, struct nvkm_fb **pfb)
{
 return nv50_fb_new_(&nv50_fb, device, index, pfb);
}
