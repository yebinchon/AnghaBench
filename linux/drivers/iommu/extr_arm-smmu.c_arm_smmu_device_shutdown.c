
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct arm_smmu_device {int clks; int num_clks; int dev; int context_map; } ;


 int ARM_SMMU_GR0_sCR0 ;
 int ARM_SMMU_MAX_CBS ;
 int arm_smmu_gr0_write (struct arm_smmu_device*,int ,int ) ;
 int arm_smmu_rpm_get (struct arm_smmu_device*) ;
 int arm_smmu_rpm_put (struct arm_smmu_device*) ;
 int bitmap_empty (int ,int ) ;
 int clk_bulk_disable (int ,int ) ;
 int clk_bulk_unprepare (int ,int ) ;
 int dev_err (int *,char*) ;
 struct arm_smmu_device* platform_get_drvdata (struct platform_device*) ;
 scalar_t__ pm_runtime_enabled (int ) ;
 int pm_runtime_force_suspend (int ) ;
 int sCR0_CLIENTPD ;

__attribute__((used)) static void arm_smmu_device_shutdown(struct platform_device *pdev)
{
 struct arm_smmu_device *smmu = platform_get_drvdata(pdev);

 if (!smmu)
  return;

 if (!bitmap_empty(smmu->context_map, ARM_SMMU_MAX_CBS))
  dev_err(&pdev->dev, "removing device with active domains!\n");

 arm_smmu_rpm_get(smmu);

 arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_sCR0, sCR0_CLIENTPD);
 arm_smmu_rpm_put(smmu);

 if (pm_runtime_enabled(smmu->dev))
  pm_runtime_force_suspend(smmu->dev);
 else
  clk_bulk_disable(smmu->num_clks, smmu->clks);

 clk_bulk_unprepare(smmu->num_clks, smmu->clks);
}
