
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct page {int dummy; } ;
struct nvkm_subdev {TYPE_2__* device; } ;
struct nvkm_mm_node {int offset; } ;
struct TYPE_6__ {int * ptrs; } ;
struct gk20a_instobj {struct nvkm_mm_node* mn; TYPE_3__ memory; } ;
struct gk20a_instobj_iommu {struct page** pages; scalar_t__* dma_addrs; struct gk20a_instobj base; } ;
struct TYPE_4__ {struct nvkm_subdev subdev; } ;
struct gk20a_instmem {int iommu_pgshift; int mm_mutex; int mm; scalar_t__ iommu_bit; int domain; TYPE_1__ base; } ;
struct device {int dummy; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_5__ {struct device* dev; } ;


 int BIT (scalar_t__) ;
 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IOMMU_READ ;
 int IOMMU_WRITE ;
 scalar_t__ PAGE_SIZE ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 scalar_t__ dma_map_page (struct device*,struct page*,int ,scalar_t__,int ) ;
 scalar_t__ dma_mapping_error (struct device*,scalar_t__) ;
 int dma_unmap_page (struct device*,scalar_t__,scalar_t__,int ) ;
 int gk20a_instobj_func_iommu ;
 int gk20a_instobj_ptrs ;
 int iommu_map (int ,int,scalar_t__,scalar_t__,int) ;
 int iommu_unmap (int ,int,scalar_t__) ;
 struct gk20a_instobj_iommu* kzalloc (int,int ) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int nvkm_error (struct nvkm_subdev*,char*,...) ;
 int nvkm_memory_ctor (int *,TYPE_3__*) ;
 int nvkm_mm_free (int ,struct nvkm_mm_node**) ;
 int nvkm_mm_head (int ,int ,int,int,int,int,struct nvkm_mm_node**) ;

__attribute__((used)) static int
gk20a_instobj_ctor_iommu(struct gk20a_instmem *imem, u32 npages, u32 align,
    struct gk20a_instobj **_node)
{
 struct gk20a_instobj_iommu *node;
 struct nvkm_subdev *subdev = &imem->base.subdev;
 struct device *dev = subdev->device->dev;
 struct nvkm_mm_node *r;
 int ret;
 int i;





 if (!(node = kzalloc(sizeof(*node) + ((sizeof(node->pages[0]) +
        sizeof(*node->dma_addrs)) * npages), GFP_KERNEL)))
  return -ENOMEM;
 *_node = &node->base;
 node->dma_addrs = (void *)(node->pages + npages);

 nvkm_memory_ctor(&gk20a_instobj_func_iommu, &node->base.memory);
 node->base.memory.ptrs = &gk20a_instobj_ptrs;


 for (i = 0; i < npages; i++) {
  struct page *p = alloc_page(GFP_KERNEL);
  dma_addr_t dma_adr;

  if (p == ((void*)0)) {
   ret = -ENOMEM;
   goto free_pages;
  }
  node->pages[i] = p;
  dma_adr = dma_map_page(dev, p, 0, PAGE_SIZE, DMA_BIDIRECTIONAL);
  if (dma_mapping_error(dev, dma_adr)) {
   nvkm_error(subdev, "DMA mapping error!\n");
   ret = -ENOMEM;
   goto free_pages;
  }
  node->dma_addrs[i] = dma_adr;
 }

 mutex_lock(imem->mm_mutex);

 ret = nvkm_mm_head(imem->mm, 0, 1, npages, npages,
      align >> imem->iommu_pgshift, &r);
 mutex_unlock(imem->mm_mutex);
 if (ret) {
  nvkm_error(subdev, "IOMMU space is full!\n");
  goto free_pages;
 }


 for (i = 0; i < npages; i++) {
  u32 offset = (r->offset + i) << imem->iommu_pgshift;

  ret = iommu_map(imem->domain, offset, node->dma_addrs[i],
    PAGE_SIZE, IOMMU_READ | IOMMU_WRITE);
  if (ret < 0) {
   nvkm_error(subdev, "IOMMU mapping failure: %d\n", ret);

   while (i-- > 0) {
    offset -= PAGE_SIZE;
    iommu_unmap(imem->domain, offset, PAGE_SIZE);
   }
   goto release_area;
  }
 }


 r->offset |= BIT(imem->iommu_bit - imem->iommu_pgshift);

 node->base.mn = r;
 return 0;

release_area:
 mutex_lock(imem->mm_mutex);
 nvkm_mm_free(imem->mm, &r);
 mutex_unlock(imem->mm_mutex);

free_pages:
 for (i = 0; i < npages && node->pages[i] != ((void*)0); i++) {
  dma_addr_t dma_addr = node->dma_addrs[i];
  if (dma_addr)
   dma_unmap_page(dev, dma_addr, PAGE_SIZE,
           DMA_BIDIRECTIONAL);
  __free_page(node->pages[i]);
 }

 return ret;
}
