
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp_channel {int ivc; } ;


 int tegra_ivc_write_advance (int ) ;

__attribute__((used)) static int tegra186_bpmp_post_message(struct tegra_bpmp_channel *channel)
{
 return tegra_ivc_write_advance(channel->ivc);
}
