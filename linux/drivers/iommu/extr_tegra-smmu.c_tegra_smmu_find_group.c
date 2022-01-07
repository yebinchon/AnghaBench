
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_smmu_group_soc {unsigned int num_swgroups; unsigned int* swgroups; } ;
struct tegra_smmu {TYPE_1__* soc; } ;
struct TYPE_2__ {unsigned int num_groups; struct tegra_smmu_group_soc const* groups; } ;



__attribute__((used)) static const struct tegra_smmu_group_soc *
tegra_smmu_find_group(struct tegra_smmu *smmu, unsigned int swgroup)
{
 unsigned int i, j;

 for (i = 0; i < smmu->soc->num_groups; i++)
  for (j = 0; j < smmu->soc->groups[i].num_swgroups; j++)
   if (smmu->soc->groups[i].swgroups[j] == swgroup)
    return &smmu->soc->groups[i];

 return ((void*)0);
}
