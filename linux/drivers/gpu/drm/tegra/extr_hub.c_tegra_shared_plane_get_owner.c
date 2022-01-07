
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_plane {int dummy; } ;
struct tegra_dc {int dummy; } ;


 int DC_WIN_CORE_WINDOWGROUP_SET_CONTROL ;
 unsigned int OWNER_MASK ;
 unsigned int tegra_dc_readl (struct tegra_dc*,unsigned int) ;
 unsigned int tegra_plane_offset (struct tegra_plane*,int ) ;

__attribute__((used)) static unsigned int
tegra_shared_plane_get_owner(struct tegra_plane *plane, struct tegra_dc *dc)
{
 unsigned int offset =
  tegra_plane_offset(plane, DC_WIN_CORE_WINDOWGROUP_SET_CONTROL);

 return tegra_dc_readl(dc, offset) & OWNER_MASK;
}
