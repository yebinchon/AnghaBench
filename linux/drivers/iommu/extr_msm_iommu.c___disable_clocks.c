
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_iommu_dev {scalar_t__ pclk; scalar_t__ clk; } ;


 int clk_disable (scalar_t__) ;

__attribute__((used)) static void __disable_clocks(struct msm_iommu_dev *iommu)
{
 if (iommu->clk)
  clk_disable(iommu->clk);
 clk_disable(iommu->pclk);
}
