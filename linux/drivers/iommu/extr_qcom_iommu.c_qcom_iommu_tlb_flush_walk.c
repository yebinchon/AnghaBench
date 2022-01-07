
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int qcom_iommu_tlb_inv_range_nosync (unsigned long,size_t,size_t,int,void*) ;
 int qcom_iommu_tlb_sync (void*) ;

__attribute__((used)) static void qcom_iommu_tlb_flush_walk(unsigned long iova, size_t size,
          size_t granule, void *cookie)
{
 qcom_iommu_tlb_inv_range_nosync(iova, size, granule, 0, cookie);
 qcom_iommu_tlb_sync(cookie);
}
