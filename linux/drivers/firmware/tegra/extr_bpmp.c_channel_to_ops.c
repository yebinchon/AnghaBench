
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_bpmp_ops {int dummy; } ;
struct tegra_bpmp_channel {struct tegra_bpmp* bpmp; } ;
struct tegra_bpmp {TYPE_1__* soc; } ;
struct TYPE_2__ {struct tegra_bpmp_ops const* ops; } ;



__attribute__((used)) static inline const struct tegra_bpmp_ops *
channel_to_ops(struct tegra_bpmp_channel *channel)
{
 struct tegra_bpmp *bpmp = channel->bpmp;

 return bpmp->soc->ops;
}
