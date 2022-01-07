
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct dm_crtc_state {scalar_t__ stream; } ;


 int __drm_atomic_helper_crtc_destroy_state (struct drm_crtc_state*) ;
 int dc_stream_release (scalar_t__) ;
 int kfree (struct drm_crtc_state*) ;
 struct dm_crtc_state* to_dm_crtc_state (struct drm_crtc_state*) ;

__attribute__((used)) static void dm_crtc_destroy_state(struct drm_crtc *crtc,
      struct drm_crtc_state *state)
{
 struct dm_crtc_state *cur = to_dm_crtc_state(state);


 if (cur->stream)
  dc_stream_release(cur->stream);


 __drm_atomic_helper_crtc_destroy_state(state);


 kfree(state);
}
