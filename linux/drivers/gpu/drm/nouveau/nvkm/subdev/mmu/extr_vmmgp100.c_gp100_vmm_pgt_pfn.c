
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nvkm_vmm_map {int* pfn; } ;
struct nvkm_vmm {TYPE_3__* mmu; } ;
struct nvkm_mmu_pt {int memory; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_6__ {TYPE_2__ subdev; } ;
struct TYPE_4__ {struct device* dev; } ;


 int BIT_ULL (int) ;
 int DMA_BIDIRECTIONAL ;
 int NVKM_VMM_PFN_ADDR ;
 int NVKM_VMM_PFN_ADDR_SHIFT ;
 int NVKM_VMM_PFN_VRAM ;
 int NVKM_VMM_PFN_W ;
 int PAGE_SIZE ;
 int VMM_WO064 (struct nvkm_mmu_pt*,struct nvkm_vmm*,int,int) ;
 int WARN_ON (int ) ;
 int dma_map_page (struct device*,int ,int ,int ,int ) ;
 int dma_mapping_error (struct device*,int) ;
 int nvkm_done (int ) ;
 int nvkm_kmap (int ) ;
 int pfn_to_page (int) ;

__attribute__((used)) static void
gp100_vmm_pgt_pfn(struct nvkm_vmm *vmm, struct nvkm_mmu_pt *pt,
    u32 ptei, u32 ptes, struct nvkm_vmm_map *map)
{
 struct device *dev = vmm->mmu->subdev.device->dev;
 dma_addr_t addr;

 nvkm_kmap(pt->memory);
 while (ptes--) {
  u64 data = 0;
  if (!(*map->pfn & NVKM_VMM_PFN_W))
   data |= BIT_ULL(6);

  if (!(*map->pfn & NVKM_VMM_PFN_VRAM)) {
   addr = *map->pfn >> NVKM_VMM_PFN_ADDR_SHIFT;
   addr = dma_map_page(dev, pfn_to_page(addr), 0,
         PAGE_SIZE, DMA_BIDIRECTIONAL);
   if (!WARN_ON(dma_mapping_error(dev, addr))) {
    data |= addr >> 4;
    data |= 2ULL << 1;
    data |= BIT_ULL(3);
    data |= BIT_ULL(0);
   }
  } else {
   data |= (*map->pfn & NVKM_VMM_PFN_ADDR) >> 4;
   data |= BIT_ULL(0);
  }

  VMM_WO064(pt, vmm, ptei++ * 8, data);
  map->pfn++;
 }
 nvkm_done(pt->memory);
}
