
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mtk_iommu_tlb_add_flush_nosync (unsigned long,size_t,size_t,int,void*) ;
 int mtk_iommu_tlb_sync (void*) ;

__attribute__((used)) static void mtk_iommu_tlb_flush_leaf(unsigned long iova, size_t size,
         size_t granule, void *cookie)
{
 mtk_iommu_tlb_add_flush_nosync(iova, size, granule, 1, cookie);
 mtk_iommu_tlb_sync(cookie);
}
