
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_plane {int dc; } ;


 int tegra_dc_writel (int ,int ,int ) ;
 int tegra_plane_offset (struct tegra_plane*,unsigned int) ;

__attribute__((used)) static inline void tegra_plane_writel(struct tegra_plane *plane, u32 value,
          unsigned int offset)
{
 tegra_dc_writel(plane->dc, value, tegra_plane_offset(plane, offset));
}
