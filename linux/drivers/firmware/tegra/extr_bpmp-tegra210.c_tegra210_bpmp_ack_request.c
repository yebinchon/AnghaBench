
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_bpmp_channel {int index; TYPE_1__* bpmp; } ;
struct tegra210_bpmp {scalar_t__ arb_sema; } ;
struct TYPE_2__ {struct tegra210_bpmp* priv; } ;


 scalar_t__ SET_OFFSET ;
 int SL_QUED (int ) ;
 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static int tegra210_bpmp_ack_request(struct tegra_bpmp_channel *channel)
{
 struct tegra210_bpmp *priv = channel->bpmp->priv;

 __raw_writel(SL_QUED(channel->index), priv->arb_sema + SET_OFFSET);

 return 0;
}
