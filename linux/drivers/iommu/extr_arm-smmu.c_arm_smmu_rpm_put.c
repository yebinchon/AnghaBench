
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_smmu_device {int dev; } ;


 scalar_t__ pm_runtime_enabled (int ) ;
 int pm_runtime_put (int ) ;

__attribute__((used)) static inline void arm_smmu_rpm_put(struct arm_smmu_device *smmu)
{
 if (pm_runtime_enabled(smmu->dev))
  pm_runtime_put(smmu->dev);
}
