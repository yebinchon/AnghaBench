
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct drm_crtc {TYPE_1__ base; } ;
struct sti_mixer {struct drm_crtc drm_crtc; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*,int ,int ) ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int drm_crtc_helper_add (struct drm_crtc*,int *) ;
 int drm_crtc_init_with_planes (struct drm_device*,struct drm_crtc*,struct drm_plane*,struct drm_plane*,int *,int *) ;
 int sti_crtc_funcs ;
 int sti_crtc_helper_funcs ;
 int sti_mixer_to_str (struct sti_mixer*) ;

int sti_crtc_init(struct drm_device *drm_dev, struct sti_mixer *mixer,
    struct drm_plane *primary, struct drm_plane *cursor)
{
 struct drm_crtc *crtc = &mixer->drm_crtc;
 int res;

 res = drm_crtc_init_with_planes(drm_dev, crtc, primary, cursor,
     &sti_crtc_funcs, ((void*)0));
 if (res) {
  DRM_ERROR("Can't initialize CRTC\n");
  return -EINVAL;
 }

 drm_crtc_helper_add(crtc, &sti_crtc_helper_funcs);

 DRM_DEBUG_DRIVER("drm CRTC:%d mapped to %s\n",
    crtc->base.id, sti_mixer_to_str(mixer));

 return 0;
}
