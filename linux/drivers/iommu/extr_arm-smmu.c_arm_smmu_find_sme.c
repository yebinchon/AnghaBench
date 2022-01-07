
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct arm_smmu_smr {int mask; int id; int valid; } ;
struct arm_smmu_device {int num_mapping_groups; struct arm_smmu_smr* smrs; } ;


 int EINVAL ;
 int ENOSPC ;

__attribute__((used)) static int arm_smmu_find_sme(struct arm_smmu_device *smmu, u16 id, u16 mask)
{
 struct arm_smmu_smr *smrs = smmu->smrs;
 int i, free_idx = -ENOSPC;


 if (!smrs)
  return id;


 for (i = 0; i < smmu->num_mapping_groups; ++i) {
  if (!smrs[i].valid) {




   if (free_idx < 0)
    free_idx = i;
   continue;
  }







  if ((mask & smrs[i].mask) == mask &&
      !((id ^ smrs[i].id) & ~smrs[i].mask))
   return i;





  if (!((id ^ smrs[i].id) & ~(smrs[i].mask | mask)))
   return -EINVAL;
 }

 return free_idx;
}
