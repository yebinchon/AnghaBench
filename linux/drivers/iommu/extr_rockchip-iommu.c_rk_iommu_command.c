
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rk_iommu {int num_mmu; scalar_t__* bases; } ;


 scalar_t__ RK_MMU_COMMAND ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void rk_iommu_command(struct rk_iommu *iommu, u32 command)
{
 int i;

 for (i = 0; i < iommu->num_mmu; i++)
  writel(command, iommu->bases[i] + RK_MMU_COMMAND);
}
