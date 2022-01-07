
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fb {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int nv49_fb ;
 int nvkm_fb_new_ (int *,struct nvkm_device*,int,struct nvkm_fb**) ;

int
nv49_fb_new(struct nvkm_device *device, int index, struct nvkm_fb **pfb)
{
 return nvkm_fb_new_(&nv49_fb, device, index, pfb);
}
