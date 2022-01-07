
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int fb_damage_clips; scalar_t__ commit; scalar_t__ fence; scalar_t__ fb; } ;


 int dma_fence_put (scalar_t__) ;
 int drm_crtc_commit_put (scalar_t__) ;
 int drm_framebuffer_put (scalar_t__) ;
 int drm_property_blob_put (int ) ;

void __drm_atomic_helper_plane_destroy_state(struct drm_plane_state *state)
{
 if (state->fb)
  drm_framebuffer_put(state->fb);

 if (state->fence)
  dma_fence_put(state->fence);

 if (state->commit)
  drm_crtc_commit_put(state->commit);

 drm_property_blob_put(state->fb_damage_clips);
}
