
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_hsp_doorbell {int channel; } ;


 int BIT (int ) ;
 int HSP_DB_ENABLE ;
 int TEGRA_HSP_DB_MASTER_CCPLEX ;
 int tegra_hsp_channel_readl (int *,int ) ;

__attribute__((used)) static bool tegra_hsp_doorbell_can_ring(struct tegra_hsp_doorbell *db)
{
 u32 value;

 value = tegra_hsp_channel_readl(&db->channel, HSP_DB_ENABLE);

 return (value & BIT(TEGRA_HSP_DB_MASTER_CCPLEX)) != 0;
}
