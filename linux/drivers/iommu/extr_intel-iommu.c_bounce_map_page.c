
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int * dma_mask; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int bounce_map_single (struct device*,scalar_t__,size_t,int,unsigned long,int ) ;
 scalar_t__ page_to_phys (struct page*) ;

__attribute__((used)) static dma_addr_t
bounce_map_page(struct device *dev, struct page *page, unsigned long offset,
  size_t size, enum dma_data_direction dir, unsigned long attrs)
{
 return bounce_map_single(dev, page_to_phys(page) + offset,
     size, dir, attrs, *dev->dma_mask);
}
