
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int fb; } ;
struct drm_plane {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 int DRM_ERROR (char*,int) ;
 struct drm_gem_object* drm_gem_fb_get_obj (int ,int ) ;
 int drm_gem_fb_prepare_fb (struct drm_plane*,struct drm_plane_state*) ;
 int vkms_gem_vmap (struct drm_gem_object*) ;

__attribute__((used)) static int vkms_prepare_fb(struct drm_plane *plane,
      struct drm_plane_state *state)
{
 struct drm_gem_object *gem_obj;
 int ret;

 if (!state->fb)
  return 0;

 gem_obj = drm_gem_fb_get_obj(state->fb, 0);
 ret = vkms_gem_vmap(gem_obj);
 if (ret)
  DRM_ERROR("vmap failed: %d\n", ret);

 return drm_gem_fb_prepare_fb(plane, state);
}
