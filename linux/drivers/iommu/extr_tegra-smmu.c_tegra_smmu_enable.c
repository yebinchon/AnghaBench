
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tegra_smmu_swgroup {int reg; } ;
struct tegra_smmu {TYPE_1__* soc; } ;
struct TYPE_4__ {int reg; int bit; } ;
struct tegra_mc_client {unsigned int swgroup; TYPE_2__ smmu; } ;
struct TYPE_3__ {unsigned int num_clients; struct tegra_mc_client* clients; } ;


 int BIT (int ) ;
 int SMMU_ASID_ENABLE ;
 int SMMU_ASID_MASK ;
 int SMMU_ASID_VALUE (unsigned int) ;
 int smmu_readl (struct tegra_smmu*,int ) ;
 int smmu_writel (struct tegra_smmu*,int ,int ) ;
 struct tegra_smmu_swgroup* tegra_smmu_find_swgroup (struct tegra_smmu*,unsigned int) ;

__attribute__((used)) static void tegra_smmu_enable(struct tegra_smmu *smmu, unsigned int swgroup,
         unsigned int asid)
{
 const struct tegra_smmu_swgroup *group;
 unsigned int i;
 u32 value;

 for (i = 0; i < smmu->soc->num_clients; i++) {
  const struct tegra_mc_client *client = &smmu->soc->clients[i];

  if (client->swgroup != swgroup)
   continue;

  value = smmu_readl(smmu, client->smmu.reg);
  value |= BIT(client->smmu.bit);
  smmu_writel(smmu, value, client->smmu.reg);
 }

 group = tegra_smmu_find_swgroup(smmu, swgroup);
 if (group) {
  value = smmu_readl(smmu, group->reg);
  value &= ~SMMU_ASID_MASK;
  value |= SMMU_ASID_VALUE(asid);
  value |= SMMU_ASID_ENABLE;
  smmu_writel(smmu, value, group->reg);
 }
}
