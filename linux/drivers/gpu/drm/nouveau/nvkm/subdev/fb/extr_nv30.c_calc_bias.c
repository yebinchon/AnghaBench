
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_fb {TYPE_1__ subdev; } ;
struct nvkm_device {int chipset; } ;


 int nvkm_rd32 (struct nvkm_device*,int) ;

__attribute__((used)) static int
calc_bias(struct nvkm_fb *fb, int k, int i, int j)
{
 struct nvkm_device *device = fb->subdev.device;
 int b = (device->chipset > 0x30 ?
   nvkm_rd32(device, 0x122c + 0x10 * k + 0x4 * j) >>
   (4 * (i ^ 1)) :
   0) & 0xf;

 return 2 * (b & 0x8 ? b - 0x10 : b);
}
