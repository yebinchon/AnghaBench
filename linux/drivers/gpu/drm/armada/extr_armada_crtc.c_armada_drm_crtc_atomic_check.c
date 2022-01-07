
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_crtc_state {int planes_changed; scalar_t__ color_mgmt_changed; scalar_t__ gamma_lut; } ;
struct TYPE_2__ {int id; } ;
struct drm_crtc {int name; TYPE_1__ base; } ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;
 int EINVAL ;
 int drm_color_lut_size (scalar_t__) ;

__attribute__((used)) static int armada_drm_crtc_atomic_check(struct drm_crtc *crtc,
     struct drm_crtc_state *state)
{
 DRM_DEBUG_KMS("[CRTC:%d:%s]\n", crtc->base.id, crtc->name);

 if (state->gamma_lut && drm_color_lut_size(state->gamma_lut) != 256)
  return -EINVAL;

 if (state->color_mgmt_changed)
  state->planes_changed = 1;

 return 0;
}
