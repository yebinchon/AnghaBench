
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct page {int dummy; } ;
struct TYPE_6__ {TYPE_2__* device; } ;
struct nvkm_mmu {int dma_bits; TYPE_3__ subdev; TYPE_1__* type; } ;
struct nvkm_memory {int dummy; } ;
struct nvkm_mem {int target; int pages; struct page** mem; int * dma; struct nvkm_memory memory; int sgl; struct nvkm_mmu* mmu; } ;
struct nvif_mem_ram_vn {int dummy; } ;
struct nvif_mem_ram_v0 {int sgl; int * dma; } ;
struct device {int dummy; } ;
typedef int gfp_t ;
typedef enum nvkm_memory_target { ____Placeholder_nvkm_memory_target } nvkm_memory_target ;
struct TYPE_5__ {struct device* dev; } ;
struct TYPE_4__ {int type; } ;


 int ALIGN (int,int ) ;
 int DMA_BIDIRECTIONAL ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_DMA32 ;
 int GFP_HIGHUSER ;
 int GFP_KERNEL ;
 int GFP_USER ;
 int IS_ALIGNED (int,int ) ;
 int NVKM_MEM_COHERENT ;
 int NVKM_MEM_TARGET_HOST ;
 int NVKM_MEM_TARGET_NCOH ;
 int NVKM_MEM_UNCACHED ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int __GFP_ZERO ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int) ;
 int dma_map_page (struct device*,struct page*,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int kfree (struct nvkm_mem*) ;
 void* kvmalloc_array (int,int,int ) ;
 struct nvkm_mem* kzalloc (int,int ) ;
 int nvif_unpack (int,void**,int *,struct nvif_mem_ram_v0,int ,int ,int) ;
 int nvif_unvers (int,void**,int *,struct nvif_mem_ram_vn) ;
 int nvkm_mem_dma ;
 int nvkm_mem_sgl ;
 int nvkm_memory_ctor (int *,struct nvkm_memory*) ;

__attribute__((used)) static int
nvkm_mem_new_host(struct nvkm_mmu *mmu, int type, u8 page, u64 size,
    void *argv, u32 argc, struct nvkm_memory **pmemory)
{
 struct device *dev = mmu->subdev.device->dev;
 union {
  struct nvif_mem_ram_vn vn;
  struct nvif_mem_ram_v0 v0;
 } *args = argv;
 int ret = -ENOSYS;
 enum nvkm_memory_target target;
 struct nvkm_mem *mem;
 gfp_t gfp = GFP_USER | __GFP_ZERO;

 if ( (mmu->type[type].type & NVKM_MEM_COHERENT) &&
     !(mmu->type[type].type & NVKM_MEM_UNCACHED))
  target = NVKM_MEM_TARGET_HOST;
 else
  target = NVKM_MEM_TARGET_NCOH;

 if (page != PAGE_SHIFT)
  return -EINVAL;

 if (!(mem = kzalloc(sizeof(*mem), GFP_KERNEL)))
  return -ENOMEM;
 mem->target = target;
 mem->mmu = mmu;
 *pmemory = &mem->memory;

 if (!(ret = nvif_unpack(ret, &argv, &argc, args->v0, 0, 0, 0))) {
  if (args->v0.dma) {
   nvkm_memory_ctor(&nvkm_mem_dma, &mem->memory);
   mem->dma = args->v0.dma;
  } else {
   nvkm_memory_ctor(&nvkm_mem_sgl, &mem->memory);
   mem->sgl = args->v0.sgl;
  }

  if (!IS_ALIGNED(size, PAGE_SIZE))
   return -EINVAL;
  mem->pages = size >> PAGE_SHIFT;
  return 0;
 } else
 if ( (ret = nvif_unvers(ret, &argv, &argc, args->vn))) {
  kfree(mem);
  return ret;
 }

 nvkm_memory_ctor(&nvkm_mem_dma, &mem->memory);
 size = ALIGN(size, PAGE_SIZE) >> PAGE_SHIFT;

 if (!(mem->mem = kvmalloc_array(size, sizeof(*mem->mem), GFP_KERNEL)))
  return -ENOMEM;
 if (!(mem->dma = kvmalloc_array(size, sizeof(*mem->dma), GFP_KERNEL)))
  return -ENOMEM;

 if (mmu->dma_bits > 32)
  gfp |= GFP_HIGHUSER;
 else
  gfp |= GFP_DMA32;

 for (mem->pages = 0; size; size--, mem->pages++) {
  struct page *p = alloc_page(gfp);
  if (!p)
   return -ENOMEM;

  mem->dma[mem->pages] = dma_map_page(mmu->subdev.device->dev,
          p, 0, PAGE_SIZE,
          DMA_BIDIRECTIONAL);
  if (dma_mapping_error(dev, mem->dma[mem->pages])) {
   __free_page(p);
   return -ENOMEM;
  }

  mem->mem[mem->pages] = p;
 }

 return 0;
}
