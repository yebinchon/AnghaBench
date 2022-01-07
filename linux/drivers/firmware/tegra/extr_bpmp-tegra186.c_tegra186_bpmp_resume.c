
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int count; } ;
struct tegra_bpmp {int * threaded_channels; TYPE_1__ threaded; int * rx_channel; int * tx_channel; } ;


 int tegra186_bpmp_channel_reset (int *) ;

__attribute__((used)) static int tegra186_bpmp_resume(struct tegra_bpmp *bpmp)
{
 unsigned int i;


 tegra186_bpmp_channel_reset(bpmp->tx_channel);
 tegra186_bpmp_channel_reset(bpmp->rx_channel);

 for (i = 0; i < bpmp->threaded.count; i++)
  tegra186_bpmp_channel_reset(&bpmp->threaded_channels[i]);

 return 0;
}
