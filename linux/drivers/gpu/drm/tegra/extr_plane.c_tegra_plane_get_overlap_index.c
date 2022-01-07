
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_plane {unsigned int index; } ;


 int WARN_ON (int) ;

__attribute__((used)) static unsigned int tegra_plane_get_overlap_index(struct tegra_plane *plane,
        struct tegra_plane *other)
{
 unsigned int index = 0, i;

 WARN_ON(plane == other);

 for (i = 0; i < 3; i++) {
  if (i == plane->index)
   continue;

  if (i == other->index)
   break;

  index++;
 }

 return index;
}
