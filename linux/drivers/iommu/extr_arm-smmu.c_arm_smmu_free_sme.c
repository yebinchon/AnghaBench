
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct arm_smmu_device {TYPE_1__* smrs; TYPE_2__* s2crs; } ;
struct TYPE_4__ {scalar_t__ count; } ;
struct TYPE_3__ {int valid; } ;


 TYPE_2__ s2cr_init_val ;

__attribute__((used)) static bool arm_smmu_free_sme(struct arm_smmu_device *smmu, int idx)
{
 if (--smmu->s2crs[idx].count)
  return 0;

 smmu->s2crs[idx] = s2cr_init_val;
 if (smmu->smrs)
  smmu->smrs[idx].valid = 0;

 return 1;
}
