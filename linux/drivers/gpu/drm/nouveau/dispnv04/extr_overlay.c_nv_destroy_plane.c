
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {int dummy; } ;


 int drm_plane_cleanup (struct drm_plane*) ;
 int drm_plane_force_disable (struct drm_plane*) ;
 int kfree (struct drm_plane*) ;

__attribute__((used)) static void
nv_destroy_plane(struct drm_plane *plane)
{
 drm_plane_force_disable(plane);
 drm_plane_cleanup(plane);
 kfree(plane);
}
