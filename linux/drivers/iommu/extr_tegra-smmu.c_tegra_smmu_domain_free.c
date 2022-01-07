
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_smmu_as {struct tegra_smmu_as* pts; struct tegra_smmu_as* count; int use_count; } ;
struct iommu_domain {int dummy; } ;


 int WARN_ON_ONCE (int ) ;
 int kfree (struct tegra_smmu_as*) ;
 struct tegra_smmu_as* to_smmu_as (struct iommu_domain*) ;

__attribute__((used)) static void tegra_smmu_domain_free(struct iommu_domain *domain)
{
 struct tegra_smmu_as *as = to_smmu_as(domain);



 WARN_ON_ONCE(as->use_count);
 kfree(as->count);
 kfree(as->pts);
 kfree(as);
}
