
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_bpmp_channel {int index; TYPE_1__* bpmp; } ;
struct tegra210_bpmp {scalar_t__ arb_sema; } ;
struct TYPE_2__ {struct tegra210_bpmp* priv; } ;


 int CH_MASK (int ) ;
 scalar_t__ CLR_OFFSET ;
 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static int tegra210_bpmp_post_request(struct tegra_bpmp_channel *channel)
{
 struct tegra210_bpmp *priv = channel->bpmp->priv;

 __raw_writel(CH_MASK(channel->index), priv->arb_sema + CLR_OFFSET);

 return 0;
}
