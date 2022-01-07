
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iova_cache_get () ;

__attribute__((used)) static int iommu_dma_init(void)
{
 return iova_cache_get();
}
