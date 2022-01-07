
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct io_pgtable_cfg {int coherent_walk; struct device* iommu_dev; } ;
struct device {int dummy; } ;
typedef int gfp_t ;
typedef scalar_t__ dma_addr_t ;


 int DMA_TO_DEVICE ;
 int NUMA_NO_NODE ;
 int VM_BUG_ON (int) ;
 int __GFP_HIGHMEM ;
 int __GFP_ZERO ;
 int __free_pages (struct page*,int) ;
 struct page* alloc_pages_node (int ,int,int) ;
 int dev_err (struct device*,char*) ;
 int dev_to_node (struct device*) ;
 scalar_t__ dma_map_single (struct device*,void*,size_t,int ) ;
 scalar_t__ dma_mapping_error (struct device*,scalar_t__) ;
 int dma_unmap_single (struct device*,scalar_t__,size_t,int ) ;
 int get_order (size_t) ;
 void* page_address (struct page*) ;
 scalar_t__ virt_to_phys (void*) ;

__attribute__((used)) static void *__arm_lpae_alloc_pages(size_t size, gfp_t gfp,
        struct io_pgtable_cfg *cfg)
{
 struct device *dev = cfg->iommu_dev;
 int order = get_order(size);
 struct page *p;
 dma_addr_t dma;
 void *pages;

 VM_BUG_ON((gfp & __GFP_HIGHMEM));
 p = alloc_pages_node(dev ? dev_to_node(dev) : NUMA_NO_NODE,
        gfp | __GFP_ZERO, order);
 if (!p)
  return ((void*)0);

 pages = page_address(p);
 if (!cfg->coherent_walk) {
  dma = dma_map_single(dev, pages, size, DMA_TO_DEVICE);
  if (dma_mapping_error(dev, dma))
   goto out_free;





  if (dma != virt_to_phys(pages))
   goto out_unmap;
 }

 return pages;

out_unmap:
 dev_err(dev, "Cannot accommodate DMA translation for IOMMU page tables\n");
 dma_unmap_single(dev, dma, size, DMA_TO_DEVICE);
out_free:
 __free_pages(p, order);
 return ((void*)0);
}
