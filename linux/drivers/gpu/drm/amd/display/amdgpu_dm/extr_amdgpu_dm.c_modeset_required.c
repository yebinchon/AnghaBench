
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int active; int enable; } ;
struct dc_stream_state {int dummy; } ;


 int drm_atomic_crtc_needs_modeset (struct drm_crtc_state*) ;

__attribute__((used)) static bool modeset_required(struct drm_crtc_state *crtc_state,
        struct dc_stream_state *new_stream,
        struct dc_stream_state *old_stream)
{
 if (!drm_atomic_crtc_needs_modeset(crtc_state))
  return 0;

 if (!crtc_state->enable)
  return 0;

 return crtc_state->active;
}
