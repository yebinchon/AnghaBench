
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp_channel {int ivc; } ;


 int tegra_ivc_cleanup (int ) ;

__attribute__((used)) static void tegra186_bpmp_channel_cleanup(struct tegra_bpmp_channel *channel)
{
 tegra_ivc_cleanup(channel->ivc);
}
