
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_bpmp {struct tegra210_bpmp* priv; } ;
struct tegra210_bpmp {scalar_t__ arb_sema; } ;


 int CH_MASK (unsigned int) ;
 scalar_t__ STA_OFFSET ;
 int __raw_readl (scalar_t__) ;

__attribute__((used)) static u32 bpmp_channel_status(struct tegra_bpmp *bpmp, unsigned int index)
{
 struct tegra210_bpmp *priv = bpmp->priv;

 return __raw_readl(priv->arb_sema + STA_OFFSET) & CH_MASK(index);
}
