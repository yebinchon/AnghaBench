
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct arm_smmu_device {int dummy; } ;


 int ARM_SMMU_GR0 ;
 int arm_smmu_gr0_ns (int) ;
 scalar_t__ arm_smmu_page (struct arm_smmu_device*,int) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 arm_smmu_read_ns(struct arm_smmu_device *smmu, int page,
       int offset)
{
 if (page == ARM_SMMU_GR0)
  offset = arm_smmu_gr0_ns(offset);
 return readl_relaxed(arm_smmu_page(smmu, page) + offset);
}
