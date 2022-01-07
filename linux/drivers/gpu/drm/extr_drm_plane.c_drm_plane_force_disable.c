
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_plane {int * crtc; int * fb; int * old_fb; TYPE_1__* funcs; int dev; } ;
struct TYPE_2__ {int (* disable_plane ) (struct drm_plane*,int *) ;} ;


 int DRM_ERROR (char*) ;
 int WARN_ON (int ) ;
 int drm_drv_uses_atomic_modeset (int ) ;
 int drm_framebuffer_put (int *) ;
 int stub1 (struct drm_plane*,int *) ;

void drm_plane_force_disable(struct drm_plane *plane)
{
 int ret;

 if (!plane->fb)
  return;

 WARN_ON(drm_drv_uses_atomic_modeset(plane->dev));

 plane->old_fb = plane->fb;
 ret = plane->funcs->disable_plane(plane, ((void*)0));
 if (ret) {
  DRM_ERROR("failed to disable plane with busy fb\n");
  plane->old_fb = ((void*)0);
  return;
 }

 drm_framebuffer_put(plane->old_fb);
 plane->old_fb = ((void*)0);
 plane->fb = ((void*)0);
 plane->crtc = ((void*)0);
}
