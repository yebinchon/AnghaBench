
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_plane {int dc; } ;


 int tegra_dc_readl (int ,int ) ;
 int tegra_plane_offset (struct tegra_plane*,unsigned int) ;

__attribute__((used)) static inline u32 tegra_plane_readl(struct tegra_plane *plane,
        unsigned int offset)
{
 return tegra_dc_readl(plane->dc, tegra_plane_offset(plane, offset));
}
