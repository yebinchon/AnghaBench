
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dc_stats {scalar_t__ overflow; scalar_t__ underflow; scalar_t__ vblank; scalar_t__ frames; } ;



__attribute__((used)) static void tegra_dc_stats_reset(struct tegra_dc_stats *stats)
{
 stats->frames = 0;
 stats->vblank = 0;
 stats->underflow = 0;
 stats->overflow = 0;
}
