
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct nvkm_fb {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {int mmu_rd; int mmu_wr; TYPE_1__ subdev; } ;
struct gf100_fb {int r100c10; TYPE_2__ base; scalar_t__ r100c10_page; } ;


 struct gf100_fb* gf100_fb (struct nvkm_fb*) ;
 int min (int,int ) ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_memory_addr (int ) ;
 int nvkm_memory_size (int ) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

void
gm200_fb_init(struct nvkm_fb *base)
{
 struct gf100_fb *fb = gf100_fb(base);
 struct nvkm_device *device = fb->base.subdev.device;

 if (fb->r100c10_page)
  nvkm_wr32(device, 0x100c10, fb->r100c10 >> 8);

 nvkm_wr32(device, 0x100cc8, nvkm_memory_addr(fb->base.mmu_wr) >> 8);
 nvkm_wr32(device, 0x100ccc, nvkm_memory_addr(fb->base.mmu_rd) >> 8);
 nvkm_mask(device, 0x100cc4, 0x00060000,
    min(nvkm_memory_size(fb->base.mmu_rd) >> 16, (u64)2) << 17);
}
