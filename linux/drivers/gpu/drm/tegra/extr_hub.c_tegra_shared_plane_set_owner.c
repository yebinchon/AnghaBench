
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct tegra_plane {unsigned int index; struct tegra_dc* dc; } ;
struct tegra_dc {unsigned int pipe; struct device* dev; } ;
struct device {int dummy; } ;


 int DC_WIN_CORE_WINDOWGROUP_SET_CONTROL ;
 int EBUSY ;
 unsigned int OWNER (unsigned int) ;
 unsigned int OWNER_MASK ;
 int dev_WARN (struct device*,char*,unsigned int,unsigned int) ;
 int dev_dbg (struct device*,char*,unsigned int,unsigned int,unsigned int) ;
 unsigned int tegra_dc_readl (struct tegra_dc*,unsigned int) ;
 int tegra_dc_writel (struct tegra_dc*,unsigned int,unsigned int) ;
 unsigned int tegra_plane_offset (struct tegra_plane*,int ) ;

__attribute__((used)) static int tegra_shared_plane_set_owner(struct tegra_plane *plane,
     struct tegra_dc *new)
{
 unsigned int offset =
  tegra_plane_offset(plane, DC_WIN_CORE_WINDOWGROUP_SET_CONTROL);
 struct tegra_dc *old = plane->dc, *dc = new ? new : old;
 struct device *dev = new ? new->dev : old->dev;
 unsigned int owner, index = plane->index;
 u32 value;

 value = tegra_dc_readl(dc, offset);
 owner = value & OWNER_MASK;

 if (new && (owner != OWNER_MASK && owner != new->pipe)) {
  dev_WARN(dev, "window %u owned by head %u\n", index, owner);
  return -EBUSY;
 }






 if (old && owner == OWNER_MASK)
  dev_dbg(dev, "window %u not owned by head %u but %u\n", index,
   old->pipe, owner);

 value &= ~OWNER_MASK;

 if (new)
  value |= OWNER(new->pipe);
 else
  value |= OWNER_MASK;

 tegra_dc_writel(dc, value, offset);

 plane->dc = new;

 return 0;
}
