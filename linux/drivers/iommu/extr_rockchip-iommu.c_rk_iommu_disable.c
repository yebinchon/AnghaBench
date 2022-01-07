
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_iommu {int num_mmu; int clocks; int num_clocks; int * bases; } ;


 int RK_MMU_DTE_ADDR ;
 int RK_MMU_INT_MASK ;
 int WARN_ON (int ) ;
 int clk_bulk_disable (int ,int ) ;
 int clk_bulk_enable (int ,int ) ;
 int rk_iommu_disable_paging (struct rk_iommu*) ;
 int rk_iommu_disable_stall (struct rk_iommu*) ;
 int rk_iommu_enable_stall (struct rk_iommu*) ;
 int rk_iommu_write (int ,int ,int ) ;

__attribute__((used)) static void rk_iommu_disable(struct rk_iommu *iommu)
{
 int i;


 WARN_ON(clk_bulk_enable(iommu->num_clocks, iommu->clocks));
 rk_iommu_enable_stall(iommu);
 rk_iommu_disable_paging(iommu);
 for (i = 0; i < iommu->num_mmu; i++) {
  rk_iommu_write(iommu->bases[i], RK_MMU_INT_MASK, 0);
  rk_iommu_write(iommu->bases[i], RK_MMU_DTE_ADDR, 0);
 }
 rk_iommu_disable_stall(iommu);
 clk_bulk_disable(iommu->num_clocks, iommu->clocks);
}
