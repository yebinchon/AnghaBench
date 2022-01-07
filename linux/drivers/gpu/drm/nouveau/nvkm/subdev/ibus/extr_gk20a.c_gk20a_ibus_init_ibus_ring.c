
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void
gk20a_ibus_init_ibus_ring(struct nvkm_subdev *ibus)
{
 struct nvkm_device *device = ibus->device;
 nvkm_mask(device, 0x137250, 0x3f, 0);

 nvkm_mask(device, 0x000200, 0x20, 0);
 udelay(20);
 nvkm_mask(device, 0x000200, 0x20, 0x20);

 nvkm_wr32(device, 0x12004c, 0x4);
 nvkm_wr32(device, 0x122204, 0x2);
 nvkm_rd32(device, 0x122204);





 nvkm_wr32(device, 0x122354, 0x800);
 nvkm_wr32(device, 0x128328, 0x800);
 nvkm_wr32(device, 0x124320, 0x800);
}
