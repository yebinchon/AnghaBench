
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct protection_domain {int dummy; } ;
struct page {int dummy; } ;
struct dma_ops_domain {int dummy; } ;
struct device {scalar_t__* dma_mask; scalar_t__ coherent_dma_mask; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 int DMA_MAPPING_ERROR ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct protection_domain*) ;
 size_t PAGE_ALIGN (size_t) ;
 size_t PAGE_SHIFT ;
 int PTR_ERR (struct protection_domain*) ;
 int __GFP_DMA ;
 int __GFP_DMA32 ;
 int __GFP_HIGHMEM ;
 int __GFP_NOWARN ;
 int __GFP_ZERO ;
 int __free_pages (struct page*,int ) ;
 int __map_single (struct device*,struct dma_ops_domain*,int ,size_t,int ,scalar_t__) ;
 struct page* alloc_pages (int,int ) ;
 struct page* dma_alloc_from_contiguous (struct device*,size_t,int ,int) ;
 int dma_release_from_contiguous (struct device*,struct page*,size_t) ;
 struct protection_domain* get_domain (struct device*) ;
 int get_order (size_t) ;
 int gfpflags_allow_blocking (int) ;
 void* page_address (struct page*) ;
 int page_to_phys (struct page*) ;
 struct dma_ops_domain* to_dma_ops_domain (struct protection_domain*) ;

__attribute__((used)) static void *alloc_coherent(struct device *dev, size_t size,
       dma_addr_t *dma_addr, gfp_t flag,
       unsigned long attrs)
{
 u64 dma_mask = dev->coherent_dma_mask;
 struct protection_domain *domain;
 struct dma_ops_domain *dma_dom;
 struct page *page;

 domain = get_domain(dev);
 if (PTR_ERR(domain) == -EINVAL) {
  page = alloc_pages(flag, get_order(size));
  *dma_addr = page_to_phys(page);
  return page_address(page);
 } else if (IS_ERR(domain))
  return ((void*)0);

 dma_dom = to_dma_ops_domain(domain);
 size = PAGE_ALIGN(size);
 dma_mask = dev->coherent_dma_mask;
 flag &= ~(__GFP_DMA | __GFP_HIGHMEM | __GFP_DMA32);
 flag |= __GFP_ZERO;

 page = alloc_pages(flag | __GFP_NOWARN, get_order(size));
 if (!page) {
  if (!gfpflags_allow_blocking(flag))
   return ((void*)0);

  page = dma_alloc_from_contiguous(dev, size >> PAGE_SHIFT,
     get_order(size), flag & __GFP_NOWARN);
  if (!page)
   return ((void*)0);
 }

 if (!dma_mask)
  dma_mask = *dev->dma_mask;

 *dma_addr = __map_single(dev, dma_dom, page_to_phys(page),
     size, DMA_BIDIRECTIONAL, dma_mask);

 if (*dma_addr == DMA_MAPPING_ERROR)
  goto out_free;

 return page_address(page);

out_free:

 if (!dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT))
  __free_pages(page, get_order(size));

 return ((void*)0);
}
