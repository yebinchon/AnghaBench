
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_smmu {scalar_t__ regs; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void smmu_writel(struct tegra_smmu *smmu, u32 value,
          unsigned long offset)
{
 writel(value, smmu->regs + offset);
}
