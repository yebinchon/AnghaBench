
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_smmu {int dummy; } ;


 int SMMU_TLB_FLUSH ;
 int SMMU_TLB_FLUSH_VA_MATCH_ALL ;
 int smmu_writel (struct tegra_smmu*,int ,int ) ;

__attribute__((used)) static inline void smmu_flush_tlb(struct tegra_smmu *smmu)
{
 smmu_writel(smmu, SMMU_TLB_FLUSH_VA_MATCH_ALL, SMMU_TLB_FLUSH);
}
