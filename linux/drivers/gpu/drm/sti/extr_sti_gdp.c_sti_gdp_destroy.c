
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int drm_plane_cleanup (struct drm_plane*) ;

__attribute__((used)) static void sti_gdp_destroy(struct drm_plane *drm_plane)
{
 DRM_DEBUG_DRIVER("\n");

 drm_plane_cleanup(drm_plane);
}
