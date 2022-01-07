
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tegra_smmu {TYPE_2__* mc; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {TYPE_1__* soc; } ;
struct TYPE_3__ {int atom_size; int num_address_bits; } ;


 int SMMU_PTC_FLUSH ;
 int SMMU_PTC_FLUSH_HI ;
 int SMMU_PTC_FLUSH_HI_MASK ;
 int SMMU_PTC_FLUSH_TYPE_ADR ;
 int smmu_writel (struct tegra_smmu*,int,int ) ;

__attribute__((used)) static inline void smmu_flush_ptc(struct tegra_smmu *smmu, dma_addr_t dma,
      unsigned long offset)
{
 u32 value;

 offset &= ~(smmu->mc->soc->atom_size - 1);

 if (smmu->mc->soc->num_address_bits > 32) {



  value = 0;

  smmu_writel(smmu, value, SMMU_PTC_FLUSH_HI);
 }

 value = (dma + offset) | SMMU_PTC_FLUSH_TYPE_ADR;
 smmu_writel(smmu, value, SMMU_PTC_FLUSH);
}
