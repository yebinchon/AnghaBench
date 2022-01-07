
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct protection_domain {int dummy; } ;
struct page {int dummy; } ;
struct dma_ops_domain {int dummy; } ;
struct device {int * dma_mask; } ;
typedef scalar_t__ phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int DMA_MAPPING_ERROR ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct protection_domain*) ;
 int PTR_ERR (struct protection_domain*) ;
 int __map_single (struct device*,struct dma_ops_domain*,scalar_t__,size_t,int,int ) ;
 struct protection_domain* get_domain (struct device*) ;
 scalar_t__ page_to_phys (struct page*) ;
 struct dma_ops_domain* to_dma_ops_domain (struct protection_domain*) ;

__attribute__((used)) static dma_addr_t map_page(struct device *dev, struct page *page,
      unsigned long offset, size_t size,
      enum dma_data_direction dir,
      unsigned long attrs)
{
 phys_addr_t paddr = page_to_phys(page) + offset;
 struct protection_domain *domain;
 struct dma_ops_domain *dma_dom;
 u64 dma_mask;

 domain = get_domain(dev);
 if (PTR_ERR(domain) == -EINVAL)
  return (dma_addr_t)paddr;
 else if (IS_ERR(domain))
  return DMA_MAPPING_ERROR;

 dma_mask = *dev->dma_mask;
 dma_dom = to_dma_ops_domain(domain);

 return __map_single(dev, dma_dom, paddr, size, dir, dma_mask);
}
