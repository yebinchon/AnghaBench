
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_plane {int dummy; } ;
struct drm_plane {int dummy; } ;


 int drm_plane_cleanup (struct drm_plane*) ;
 int kfree (struct tegra_plane*) ;
 struct tegra_plane* to_tegra_plane (struct drm_plane*) ;

__attribute__((used)) static void tegra_plane_destroy(struct drm_plane *plane)
{
 struct tegra_plane *p = to_tegra_plane(plane);

 drm_plane_cleanup(plane);
 kfree(p);
}
