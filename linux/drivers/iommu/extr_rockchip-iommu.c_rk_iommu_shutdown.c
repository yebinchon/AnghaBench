
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_iommu {int num_irq; int dev; } ;
struct platform_device {int dev; } ;


 int devm_free_irq (int ,int,struct rk_iommu*) ;
 struct rk_iommu* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int) ;
 int pm_runtime_force_suspend (int *) ;

__attribute__((used)) static void rk_iommu_shutdown(struct platform_device *pdev)
{
 struct rk_iommu *iommu = platform_get_drvdata(pdev);
 int i;

 for (i = 0; i < iommu->num_irq; i++) {
  int irq = platform_get_irq(pdev, i);

  devm_free_irq(iommu->dev, irq, iommu);
 }

 pm_runtime_force_suspend(&pdev->dev);
}
