
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct dc_stream_state {int mode_changed; } ;


 int drm_atomic_crtc_needs_modeset (struct drm_crtc_state*) ;

__attribute__((used)) static void amdgpu_dm_crtc_copy_transient_flags(struct drm_crtc_state *crtc_state,
      struct dc_stream_state *stream_state)
{
 stream_state->mode_changed = drm_atomic_crtc_needs_modeset(crtc_state);
}
