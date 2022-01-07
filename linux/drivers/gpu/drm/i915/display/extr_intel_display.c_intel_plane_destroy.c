
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {int dummy; } ;


 int drm_plane_cleanup (struct drm_plane*) ;
 int kfree (int ) ;
 int to_intel_plane (struct drm_plane*) ;

void intel_plane_destroy(struct drm_plane *plane)
{
 drm_plane_cleanup(plane);
 kfree(to_intel_plane(plane));
}
