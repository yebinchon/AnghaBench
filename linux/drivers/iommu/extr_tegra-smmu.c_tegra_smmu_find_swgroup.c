
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_smmu_swgroup {unsigned int swgroup; } ;
struct tegra_smmu {TYPE_1__* soc; } ;
struct TYPE_2__ {unsigned int num_swgroups; struct tegra_smmu_swgroup* swgroups; } ;



__attribute__((used)) static const struct tegra_smmu_swgroup *
tegra_smmu_find_swgroup(struct tegra_smmu *smmu, unsigned int swgroup)
{
 const struct tegra_smmu_swgroup *group = ((void*)0);
 unsigned int i;

 for (i = 0; i < smmu->soc->num_swgroups; i++) {
  if (smmu->soc->swgroups[i].swgroup == swgroup) {
   group = &smmu->soc->swgroups[i];
   break;
  }
 }

 return group;
}
