
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nvkm_vmm {TYPE_3__* mmu; } ;
struct nvkm_mmu_pt {int memory; scalar_t__ base; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_6__ {TYPE_2__ subdev; } ;
struct TYPE_4__ {struct device* dev; } ;


 int DMA_BIDIRECTIONAL ;
 int PAGE_SIZE ;
 int dma_unmap_page (struct device*,int,int ,int ) ;
 int nvkm_done (int ) ;
 int nvkm_kmap (int ) ;
 int nvkm_ro32 (int ,scalar_t__) ;

__attribute__((used)) static void
gp100_vmm_pfn_unmap(struct nvkm_vmm *vmm,
      struct nvkm_mmu_pt *pt, u32 ptei, u32 ptes)
{
 struct device *dev = vmm->mmu->subdev.device->dev;
 dma_addr_t addr;

 nvkm_kmap(pt->memory);
 while (ptes--) {
  u32 datalo = nvkm_ro32(pt->memory, pt->base + ptei * 8 + 0);
  u32 datahi = nvkm_ro32(pt->memory, pt->base + ptei * 8 + 4);
  u64 data = (u64)datahi << 32 | datalo;
  if ((data & (3ULL << 1)) != 0) {
   addr = (data >> 8) << 12;
   dma_unmap_page(dev, addr, PAGE_SIZE, DMA_BIDIRECTIONAL);
  }
  ptei++;
 }
 nvkm_done(pt->memory);
}
