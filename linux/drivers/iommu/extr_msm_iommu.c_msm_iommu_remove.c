
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct msm_iommu_dev {int pclk; int clk; } ;


 int clk_unprepare (int ) ;
 struct msm_iommu_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int msm_iommu_remove(struct platform_device *pdev)
{
 struct msm_iommu_dev *iommu = platform_get_drvdata(pdev);

 clk_unprepare(iommu->clk);
 clk_unprepare(iommu->pclk);
 return 0;
}
