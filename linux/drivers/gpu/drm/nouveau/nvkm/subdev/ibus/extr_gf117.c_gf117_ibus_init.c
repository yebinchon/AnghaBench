
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int) ;

__attribute__((used)) static int
gf117_ibus_init(struct nvkm_subdev *ibus)
{
 struct nvkm_device *device = ibus->device;
 nvkm_mask(device, 0x122310, 0x0003ffff, 0x00000800);
 nvkm_mask(device, 0x122348, 0x0003ffff, 0x00000100);
 nvkm_mask(device, 0x1223b0, 0x0003ffff, 0x00000fff);
 return 0;
}
