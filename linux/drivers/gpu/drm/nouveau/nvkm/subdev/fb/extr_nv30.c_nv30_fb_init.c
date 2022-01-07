
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_fb {TYPE_1__ subdev; } ;
struct nvkm_device {int chipset; } ;


 int calc_ref (struct nvkm_fb*,int,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int ) ;

void
nv30_fb_init(struct nvkm_fb *fb)
{
 struct nvkm_device *device = fb->subdev.device;
 int i, j;


 if (device->chipset == 0x30 ||
     device->chipset == 0x31 ||
     device->chipset == 0x35) {

  int n = (device->chipset == 0x31 ? 2 : 4);
  int l = nvkm_rd32(device, 0x1003d0);

  for (i = 0; i < n; i++) {
   for (j = 0; j < 3; j++)
    nvkm_wr32(device, 0x10037c + 0xc * i + 0x4 * j,
       calc_ref(fb, l, 0, j));

   for (j = 0; j < 2; j++)
    nvkm_wr32(device, 0x1003ac + 0x8 * i + 0x4 * j,
       calc_ref(fb, l, 1, j));
  }
 }
}
