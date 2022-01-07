
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int index; } ;
struct tegra_plane {TYPE_1__ base; } ;
struct tegra_dc {int dummy; } ;


 int DC_WIN_CORE_IHUB_LINEBUF_CONFIG ;
 int DC_WIN_CORE_IHUB_THREAD_GROUP ;
 int DC_WIN_CORE_IHUB_WGRP_FETCH_METER ;
 int DC_WIN_CORE_IHUB_WGRP_LATENCY_CTLA ;
 int DC_WIN_CORE_IHUB_WGRP_LATENCY_CTLB ;
 int DC_WIN_CORE_IHUB_WGRP_POOL_CONFIG ;
 int DC_WIN_CORE_PRECOMP_WGRP_PIPE_METER ;
 int LATENCY_CTL_MODE_ENABLE ;
 int MEMPOOL_ENTRIES (int) ;
 int MODE_FOUR_LINES ;
 int PIPE_METER_FRAC (int ) ;
 int PIPE_METER_INT (int ) ;
 int SLOTS (int) ;
 int THREAD_GROUP_ENABLE ;
 int THREAD_NUM (int ) ;
 int THREAD_NUM_MASK ;
 int WATERMARK_MASK ;
 int tegra_dc_owns_shared_plane (struct tegra_dc*,struct tegra_plane*) ;
 int tegra_plane_readl (struct tegra_plane*,int ) ;
 int tegra_plane_writel (struct tegra_plane*,int,int ) ;
 int tegra_shared_plane_activate (struct tegra_plane*) ;
 int tegra_shared_plane_set_owner (struct tegra_plane*,struct tegra_dc*) ;
 int tegra_shared_plane_update (struct tegra_plane*) ;

__attribute__((used)) static void tegra_dc_assign_shared_plane(struct tegra_dc *dc,
      struct tegra_plane *plane)
{
 u32 value;
 int err;

 if (!tegra_dc_owns_shared_plane(dc, plane)) {
  err = tegra_shared_plane_set_owner(plane, dc);
  if (err < 0)
   return;
 }

 value = tegra_plane_readl(plane, DC_WIN_CORE_IHUB_LINEBUF_CONFIG);
 value |= MODE_FOUR_LINES;
 tegra_plane_writel(plane, value, DC_WIN_CORE_IHUB_LINEBUF_CONFIG);

 value = tegra_plane_readl(plane, DC_WIN_CORE_IHUB_WGRP_FETCH_METER);
 value = SLOTS(1);
 tegra_plane_writel(plane, value, DC_WIN_CORE_IHUB_WGRP_FETCH_METER);


 value = tegra_plane_readl(plane, DC_WIN_CORE_IHUB_WGRP_LATENCY_CTLA);
 value &= ~LATENCY_CTL_MODE_ENABLE;
 tegra_plane_writel(plane, value, DC_WIN_CORE_IHUB_WGRP_LATENCY_CTLA);

 value = tegra_plane_readl(plane, DC_WIN_CORE_IHUB_WGRP_LATENCY_CTLB);
 value |= WATERMARK_MASK;
 tegra_plane_writel(plane, value, DC_WIN_CORE_IHUB_WGRP_LATENCY_CTLB);


 value = tegra_plane_readl(plane, DC_WIN_CORE_PRECOMP_WGRP_PIPE_METER);
 value = PIPE_METER_INT(0) | PIPE_METER_FRAC(0);
 tegra_plane_writel(plane, value, DC_WIN_CORE_PRECOMP_WGRP_PIPE_METER);


 value = tegra_plane_readl(plane, DC_WIN_CORE_IHUB_WGRP_POOL_CONFIG);
 value = MEMPOOL_ENTRIES(0x331);
 tegra_plane_writel(plane, value, DC_WIN_CORE_IHUB_WGRP_POOL_CONFIG);

 value = tegra_plane_readl(plane, DC_WIN_CORE_IHUB_THREAD_GROUP);
 value &= ~THREAD_NUM_MASK;
 value |= THREAD_NUM(plane->base.index);
 value |= THREAD_GROUP_ENABLE;
 tegra_plane_writel(plane, value, DC_WIN_CORE_IHUB_THREAD_GROUP);

 tegra_shared_plane_update(plane);
 tegra_shared_plane_activate(plane);
}
