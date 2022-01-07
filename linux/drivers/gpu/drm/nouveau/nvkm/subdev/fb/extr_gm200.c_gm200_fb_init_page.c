
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_fb {int page; TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int EINVAL ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;

int
gm200_fb_init_page(struct nvkm_fb *fb)
{
 struct nvkm_device *device = fb->subdev.device;
 switch (fb->page) {
 case 16: nvkm_mask(device, 0x100c80, 0x00001801, 0x00001001); break;
 case 17: nvkm_mask(device, 0x100c80, 0x00001801, 0x00000000); break;
 case 0: nvkm_mask(device, 0x100c80, 0x00001800, 0x00001800); break;
 default:
  return -EINVAL;
 }
 return 0;
}
