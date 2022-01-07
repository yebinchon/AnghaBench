
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_fb {int mmu_rd; int mmu_wr; } ;
struct nvkm_device {struct nvkm_fb* fb; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gf100_gr {TYPE_3__ base; } ;


 int GPC_BCAST (int) ;
 int nvkm_memory_addr (int ) ;
 int nvkm_wr32 (struct nvkm_device*,int ,int) ;

__attribute__((used)) static void
gm107_gr_init_gpc_mmu(struct gf100_gr *gr)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 struct nvkm_fb *fb = device->fb;

 nvkm_wr32(device, GPC_BCAST(0x0880), 0x00000000);
 nvkm_wr32(device, GPC_BCAST(0x0890), 0x00000000);
 nvkm_wr32(device, GPC_BCAST(0x0894), 0x00000000);
 nvkm_wr32(device, GPC_BCAST(0x08b4), nvkm_memory_addr(fb->mmu_wr) >> 8);
 nvkm_wr32(device, GPC_BCAST(0x08b8), nvkm_memory_addr(fb->mmu_rd) >> 8);
}
