
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_iommu {int num_mmu; int * bases; } ;


 int RK_MMU_DTE_ADDR ;
 scalar_t__ rk_iommu_read (int ,int ) ;

__attribute__((used)) static bool rk_iommu_is_reset_done(struct rk_iommu *iommu)
{
 bool done = 1;
 int i;

 for (i = 0; i < iommu->num_mmu; i++)
  done &= rk_iommu_read(iommu->bases[i], RK_MMU_DTE_ADDR) == 0;

 return done;
}
