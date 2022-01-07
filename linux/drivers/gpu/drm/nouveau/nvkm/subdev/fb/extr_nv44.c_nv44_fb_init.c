
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_fb {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_wr32 (struct nvkm_device*,int,int) ;

void
nv44_fb_init(struct nvkm_fb *fb)
{
 struct nvkm_device *device = fb->subdev.device;
 nvkm_wr32(device, 0x100850, 0x80000000);
 nvkm_wr32(device, 0x100800, 0x00000001);
}
