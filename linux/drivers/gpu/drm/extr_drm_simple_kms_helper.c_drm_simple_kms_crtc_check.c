
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int plane_mask; int enable; int state; } ;
struct drm_crtc {int primary; } ;


 int EINVAL ;
 int drm_atomic_add_affected_planes (int ,struct drm_crtc*) ;
 int drm_plane_mask (int ) ;

__attribute__((used)) static int drm_simple_kms_crtc_check(struct drm_crtc *crtc,
         struct drm_crtc_state *state)
{
 bool has_primary = state->plane_mask &
      drm_plane_mask(crtc->primary);


 if (has_primary != state->enable)
  return -EINVAL;

 return drm_atomic_add_affected_planes(state->state, crtc);
}
