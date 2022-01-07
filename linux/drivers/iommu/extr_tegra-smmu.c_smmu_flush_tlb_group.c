
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_smmu {TYPE_1__* soc; } ;
struct TYPE_2__ {int num_asids; } ;


 int SMMU_TLB_FLUSH ;
 int SMMU_TLB_FLUSH_ASID_MATCH ;
 int SMMU_TLB_FLUSH_VA_GROUP (unsigned long) ;
 int smmu_writel (struct tegra_smmu*,int,int ) ;

__attribute__((used)) static inline void smmu_flush_tlb_group(struct tegra_smmu *smmu,
     unsigned long asid,
     unsigned long iova)
{
 u32 value;

 if (smmu->soc->num_asids == 4)
  value = (asid & 0x3) << 29;
 else
  value = (asid & 0x7f) << 24;

 value |= SMMU_TLB_FLUSH_ASID_MATCH | SMMU_TLB_FLUSH_VA_GROUP(iova);
 smmu_writel(smmu, value, SMMU_TLB_FLUSH);
}
