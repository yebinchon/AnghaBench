
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_iommu {int num_mmu; int * bases; } ;


 int RK_MMU_STATUS ;
 int RK_MMU_STATUS_STALL_ACTIVE ;
 int rk_iommu_read (int ,int ) ;

__attribute__((used)) static bool rk_iommu_is_stall_active(struct rk_iommu *iommu)
{
 bool active = 1;
 int i;

 for (i = 0; i < iommu->num_mmu; i++)
  active &= !!(rk_iommu_read(iommu->bases[i], RK_MMU_STATUS) &
        RK_MMU_STATUS_STALL_ACTIVE);

 return active;
}
