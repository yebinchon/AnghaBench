
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_smmu {int pfn_mask; } ;
typedef int dma_addr_t ;



__attribute__((used)) static bool smmu_dma_addr_valid(struct tegra_smmu *smmu, dma_addr_t addr)
{
 addr >>= 12;
 return (addr & smmu->pfn_mask) == addr;
}
