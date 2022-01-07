
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_plane {int name; } ;
struct drm_plane {int dummy; } ;


 int DBG (char*,int ) ;
 int drm_plane_cleanup (struct drm_plane*) ;
 int kfree (struct omap_plane*) ;
 struct omap_plane* to_omap_plane (struct drm_plane*) ;

__attribute__((used)) static void omap_plane_destroy(struct drm_plane *plane)
{
 struct omap_plane *omap_plane = to_omap_plane(plane);

 DBG("%s", omap_plane->name);

 drm_plane_cleanup(plane);

 kfree(omap_plane);
}
