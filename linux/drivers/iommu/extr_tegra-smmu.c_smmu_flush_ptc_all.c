
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_smmu {int dummy; } ;


 int SMMU_PTC_FLUSH ;
 int SMMU_PTC_FLUSH_TYPE_ALL ;
 int smmu_writel (struct tegra_smmu*,int ,int ) ;

__attribute__((used)) static void smmu_flush_ptc_all(struct tegra_smmu *smmu)
{
 smmu_writel(smmu, SMMU_PTC_FLUSH_TYPE_ALL, SMMU_PTC_FLUSH);
}
