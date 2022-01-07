
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_fb {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int) ;

void
gp100_fb_init_remapper(struct nvkm_fb *fb)
{
 struct nvkm_device *device = fb->subdev.device;

 nvkm_mask(device, 0x100c14, 0x00040000, 0x00000000);
}
