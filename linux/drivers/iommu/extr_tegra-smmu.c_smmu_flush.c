
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_smmu {int dummy; } ;


 int SMMU_CONFIG ;
 int smmu_readl (struct tegra_smmu*,int ) ;

__attribute__((used)) static inline void smmu_flush(struct tegra_smmu *smmu)
{
 smmu_readl(smmu, SMMU_CONFIG);
}
