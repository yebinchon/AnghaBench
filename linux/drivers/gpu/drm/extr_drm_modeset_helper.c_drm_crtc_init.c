
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc_funcs {int dummy; } ;
struct drm_crtc {int dummy; } ;


 struct drm_plane* create_primary_plane (struct drm_device*) ;
 int drm_crtc_init_with_planes (struct drm_device*,struct drm_crtc*,struct drm_plane*,int *,struct drm_crtc_funcs const*,int *) ;

int drm_crtc_init(struct drm_device *dev, struct drm_crtc *crtc,
    const struct drm_crtc_funcs *funcs)
{
 struct drm_plane *primary;

 primary = create_primary_plane(dev);
 return drm_crtc_init_with_planes(dev, crtc, primary, ((void*)0), funcs,
      ((void*)0));
}
