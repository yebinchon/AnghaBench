
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int secboot; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gf100_gr {TYPE_3__ base; } ;


 int nvdev_warn (struct nvkm_device*,char*) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
gm20b_gr_init_gpc_mmu(struct gf100_gr *gr)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 u32 val;


 if (!device->secboot) {
  nvkm_wr32(device, 0x100ce4, 0xffffffff);

  if (nvkm_rd32(device, 0x100ce4) != 0xffffffff)
   nvdev_warn(device,
     "cannot bypass secure boot - expect failure soon!\n");
 }

 val = nvkm_rd32(device, 0x100c80);
 val &= 0xf000187f;
 nvkm_wr32(device, 0x418880, val);
 nvkm_wr32(device, 0x418890, 0);
 nvkm_wr32(device, 0x418894, 0);

 nvkm_wr32(device, 0x4188b0, nvkm_rd32(device, 0x100cc4));
 nvkm_wr32(device, 0x4188b4, nvkm_rd32(device, 0x100cc8));
 nvkm_wr32(device, 0x4188b8, nvkm_rd32(device, 0x100ccc));

 nvkm_wr32(device, 0x4188ac, nvkm_rd32(device, 0x100800));
}
