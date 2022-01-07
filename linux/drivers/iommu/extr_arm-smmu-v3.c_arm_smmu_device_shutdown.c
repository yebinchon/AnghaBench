
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct arm_smmu_device {int dummy; } ;


 int arm_smmu_device_disable (struct arm_smmu_device*) ;
 struct arm_smmu_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void arm_smmu_device_shutdown(struct platform_device *pdev)
{
 struct arm_smmu_device *smmu = platform_get_drvdata(pdev);

 arm_smmu_device_disable(smmu);
}
