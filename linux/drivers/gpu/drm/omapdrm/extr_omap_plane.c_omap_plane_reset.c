
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_plane {int id; } ;
struct drm_plane {scalar_t__ type; TYPE_1__* state; } ;
struct TYPE_2__ {int zpos; } ;


 scalar_t__ DRM_PLANE_TYPE_PRIMARY ;
 int drm_atomic_helper_plane_reset (struct drm_plane*) ;
 struct omap_plane* to_omap_plane (struct drm_plane*) ;

__attribute__((used)) static void omap_plane_reset(struct drm_plane *plane)
{
 struct omap_plane *omap_plane = to_omap_plane(plane);

 drm_atomic_helper_plane_reset(plane);
 if (!plane->state)
  return;





 plane->state->zpos = plane->type == DRM_PLANE_TYPE_PRIMARY
      ? 0 : omap_plane->id;
}
