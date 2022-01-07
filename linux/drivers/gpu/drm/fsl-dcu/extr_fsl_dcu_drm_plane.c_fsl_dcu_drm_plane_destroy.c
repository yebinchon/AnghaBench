
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {int dummy; } ;


 int drm_plane_cleanup (struct drm_plane*) ;
 int kfree (struct drm_plane*) ;

__attribute__((used)) static void fsl_dcu_drm_plane_destroy(struct drm_plane *plane)
{
 drm_plane_cleanup(plane);
 kfree(plane);
}
