
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_smmu_as {int * count; } ;


 unsigned int iova_pd_index (unsigned long) ;

__attribute__((used)) static void tegra_smmu_pte_get_use(struct tegra_smmu_as *as, unsigned long iova)
{
 unsigned int pd_index = iova_pd_index(iova);

 as->count[pd_index]++;
}
