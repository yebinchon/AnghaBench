
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int) ;

__attribute__((used)) static int
gk104_ibus_init(struct nvkm_subdev *ibus)
{
 struct nvkm_device *device = ibus->device;
 nvkm_mask(device, 0x122318, 0x0003ffff, 0x00001000);
 nvkm_mask(device, 0x12231c, 0x0003ffff, 0x00000200);
 nvkm_mask(device, 0x122310, 0x0003ffff, 0x00000800);
 nvkm_mask(device, 0x122348, 0x0003ffff, 0x00000100);
 nvkm_mask(device, 0x1223b0, 0x0003ffff, 0x00000fff);
 nvkm_mask(device, 0x122348, 0x0003ffff, 0x00000200);
 nvkm_mask(device, 0x122358, 0x0003ffff, 0x00002880);
 return 0;
}
