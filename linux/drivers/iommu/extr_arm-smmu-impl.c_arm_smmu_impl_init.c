
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct arm_smmu_device {int model; int * impl; TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;




 int arm_mmu500_impl ;
 int calxeda_impl ;
 struct arm_smmu_device* cavium_smmu_impl_init (struct arm_smmu_device*) ;
 scalar_t__ of_property_read_bool (int ,char*) ;

struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
{






 switch (smmu->model) {
 case 129:
  smmu->impl = &arm_mmu500_impl;
  break;
 case 128:
  return cavium_smmu_impl_init(smmu);
 default:
  break;
 }

 if (of_property_read_bool(smmu->dev->of_node,
      "calxeda,smmu-secure-config-access"))
  smmu->impl = &calxeda_impl;

 return smmu;
}
