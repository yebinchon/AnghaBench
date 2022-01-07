
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_plane {int index; struct tegra_dc* dc; } ;
struct tegra_dc {int pipe; struct device* dev; } ;
struct device {int dummy; } ;


 int dev_WARN (struct device*,char*,int ,int ) ;
 int tegra_shared_plane_get_owner (struct tegra_plane*,struct tegra_dc*) ;

__attribute__((used)) static bool tegra_dc_owns_shared_plane(struct tegra_dc *dc,
           struct tegra_plane *plane)
{
 struct device *dev = dc->dev;

 if (tegra_shared_plane_get_owner(plane, dc) == dc->pipe) {
  if (plane->dc == dc)
   return 1;

  dev_WARN(dev, "head %u owns window %u but is not attached\n",
    dc->pipe, plane->index);
 }

 return 0;
}
