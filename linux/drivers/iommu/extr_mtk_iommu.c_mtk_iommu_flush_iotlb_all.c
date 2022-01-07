
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int dummy; } ;


 int mtk_iommu_get_m4u_data () ;
 int mtk_iommu_tlb_sync (int ) ;

__attribute__((used)) static void mtk_iommu_flush_iotlb_all(struct iommu_domain *domain)
{
 mtk_iommu_tlb_sync(mtk_iommu_get_m4u_data());
}
