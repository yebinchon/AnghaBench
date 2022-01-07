
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_fb {int dummy; } ;
struct nvkm_device {int dev; int cfgopt; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {int page; int mmu_wr; int mmu_rd; TYPE_1__ subdev; } ;
struct gf100_fb {int r100c10; scalar_t__ r100c10_page; TYPE_2__ base; } ;


 int DMA_BIDIRECTIONAL ;
 int EFAULT ;
 int GFP_KERNEL ;
 int NVKM_MEM_TARGET_INST ;
 int PAGE_SIZE ;
 int __GFP_ZERO ;
 scalar_t__ alloc_page (int) ;
 int dma_map_page (int ,scalar_t__,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 struct gf100_fb* gf100_fb (struct nvkm_fb*) ;
 int max (int,int) ;
 int nvkm_longopt (int ,char*,int) ;
 int nvkm_memory_new (struct nvkm_device*,int ,int,int,int,int *) ;

int
gf100_fb_oneinit(struct nvkm_fb *base)
{
 struct gf100_fb *fb = gf100_fb(base);
 struct nvkm_device *device = fb->base.subdev.device;
 int ret, size = 1 << (fb->base.page ? fb->base.page : 17);

 size = nvkm_longopt(device->cfgopt, "MmuDebugBufferSize", size);
 size = max(size, 0x1000);

 ret = nvkm_memory_new(device, NVKM_MEM_TARGET_INST, size, 0x1000,
         1, &fb->base.mmu_rd);
 if (ret)
  return ret;

 ret = nvkm_memory_new(device, NVKM_MEM_TARGET_INST, size, 0x1000,
         1, &fb->base.mmu_wr);
 if (ret)
  return ret;

 fb->r100c10_page = alloc_page(GFP_KERNEL | __GFP_ZERO);
 if (fb->r100c10_page) {
  fb->r100c10 = dma_map_page(device->dev, fb->r100c10_page, 0,
        PAGE_SIZE, DMA_BIDIRECTIONAL);
  if (dma_mapping_error(device->dev, fb->r100c10))
   return -EFAULT;
 }

 return 0;
}
