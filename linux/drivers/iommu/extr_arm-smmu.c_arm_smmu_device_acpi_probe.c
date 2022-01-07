
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct arm_smmu_device {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int arm_smmu_device_acpi_probe(struct platform_device *pdev,
          struct arm_smmu_device *smmu)
{
 return -ENODEV;
}
