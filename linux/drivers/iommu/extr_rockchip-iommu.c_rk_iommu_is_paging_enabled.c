
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_iommu {int num_mmu; int * bases; } ;


 int RK_MMU_STATUS ;
 int RK_MMU_STATUS_PAGING_ENABLED ;
 int rk_iommu_read (int ,int ) ;

__attribute__((used)) static bool rk_iommu_is_paging_enabled(struct rk_iommu *iommu)
{
 bool enable = 1;
 int i;

 for (i = 0; i < iommu->num_mmu; i++)
  enable &= !!(rk_iommu_read(iommu->bases[i], RK_MMU_STATUS) &
        RK_MMU_STATUS_PAGING_ENABLED);

 return enable;
}
