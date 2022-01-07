
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_iotlb_gather {int dummy; } ;


 int mtk_iommu_tlb_add_flush_nosync (unsigned long,size_t,size_t,int,void*) ;

__attribute__((used)) static void mtk_iommu_tlb_flush_page_nosync(struct iommu_iotlb_gather *gather,
         unsigned long iova, size_t granule,
         void *cookie)
{
 mtk_iommu_tlb_add_flush_nosync(iova, granule, granule, 1, cookie);
}
