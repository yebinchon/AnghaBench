
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t granule; } ;
struct iommu_dma_cookie {scalar_t__ type; TYPE_1__ iovad; } ;


 scalar_t__ IOMMU_DMA_IOVA_COOKIE ;
 size_t PAGE_SIZE ;

__attribute__((used)) static inline size_t cookie_msi_granule(struct iommu_dma_cookie *cookie)
{
 if (cookie->type == IOMMU_DMA_IOVA_COOKIE)
  return cookie->iovad.granule;
 return PAGE_SIZE;
}
