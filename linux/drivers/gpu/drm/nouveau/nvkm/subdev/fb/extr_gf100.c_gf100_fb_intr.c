
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_fb {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct gf100_fb {TYPE_1__ base; } ;


 struct gf100_fb* gf100_fb (struct nvkm_fb*) ;
 int nvkm_debug (struct nvkm_subdev*,char*) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

void
gf100_fb_intr(struct nvkm_fb *base)
{
 struct gf100_fb *fb = gf100_fb(base);
 struct nvkm_subdev *subdev = &fb->base.subdev;
 struct nvkm_device *device = subdev->device;
 u32 intr = nvkm_rd32(device, 0x000100);
 if (intr & 0x08000000)
  nvkm_debug(subdev, "PFFB intr\n");
 if (intr & 0x00002000)
  nvkm_debug(subdev, "PBFB intr\n");
}
