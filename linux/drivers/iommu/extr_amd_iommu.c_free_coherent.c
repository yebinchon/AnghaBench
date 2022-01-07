
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protection_domain {int dummy; } ;
struct page {int dummy; } ;
struct dma_ops_domain {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 scalar_t__ IS_ERR (struct protection_domain*) ;
 size_t PAGE_ALIGN (size_t) ;
 size_t PAGE_SHIFT ;
 int __free_pages (struct page*,int ) ;
 int __unmap_single (struct dma_ops_domain*,int ,size_t,int ) ;
 int dma_release_from_contiguous (struct device*,struct page*,size_t) ;
 struct protection_domain* get_domain (struct device*) ;
 int get_order (size_t) ;
 struct dma_ops_domain* to_dma_ops_domain (struct protection_domain*) ;
 struct page* virt_to_page (void*) ;

__attribute__((used)) static void free_coherent(struct device *dev, size_t size,
     void *virt_addr, dma_addr_t dma_addr,
     unsigned long attrs)
{
 struct protection_domain *domain;
 struct dma_ops_domain *dma_dom;
 struct page *page;

 page = virt_to_page(virt_addr);
 size = PAGE_ALIGN(size);

 domain = get_domain(dev);
 if (IS_ERR(domain))
  goto free_mem;

 dma_dom = to_dma_ops_domain(domain);

 __unmap_single(dma_dom, dma_addr, size, DMA_BIDIRECTIONAL);

free_mem:
 if (!dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT))
  __free_pages(page, get_order(size));
}
