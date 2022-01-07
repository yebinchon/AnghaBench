
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_debug (struct nvkm_subdev*,char*,int,int ,int ,int ) ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

__attribute__((used)) static void
gk104_ibus_intr_hub(struct nvkm_subdev *ibus, int i)
{
 struct nvkm_device *device = ibus->device;
 u32 addr = nvkm_rd32(device, 0x122120 + (i * 0x0800));
 u32 data = nvkm_rd32(device, 0x122124 + (i * 0x0800));
 u32 stat = nvkm_rd32(device, 0x122128 + (i * 0x0800));
 nvkm_debug(ibus, "HUB%d: %06x %08x (%08x)\n", i, addr, data, stat);
 nvkm_mask(device, 0x122128 + (i * 0x0800), 0x00000200, 0x00000000);
}
