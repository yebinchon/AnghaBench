
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp_channel {int ivc; } ;


 scalar_t__ tegra_ivc_notified (int ) ;
 int tegra_ivc_reset (int ) ;

__attribute__((used)) static void tegra186_bpmp_channel_reset(struct tegra_bpmp_channel *channel)
{

 tegra_ivc_reset(channel->ivc);


 while (tegra_ivc_notified(channel->ivc))
  ;
}
