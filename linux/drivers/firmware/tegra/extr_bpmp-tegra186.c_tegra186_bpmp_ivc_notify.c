
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_ivc {int dummy; } ;
struct tegra_bpmp {struct tegra186_bpmp* priv; } ;
struct TYPE_2__ {int * channel; } ;
struct tegra186_bpmp {TYPE_1__ mbox; } ;


 scalar_t__ WARN_ON (int ) ;
 int tegra186_bpmp_ring_doorbell (struct tegra_bpmp*) ;

__attribute__((used)) static void tegra186_bpmp_ivc_notify(struct tegra_ivc *ivc, void *data)
{
 struct tegra_bpmp *bpmp = data;
 struct tegra186_bpmp *priv = bpmp->priv;

 if (WARN_ON(priv->mbox.channel == ((void*)0)))
  return;

 tegra186_bpmp_ring_doorbell(bpmp);
}
