
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {scalar_t__ crtc; } ;



__attribute__((used)) static bool
plane_switching_crtc(const struct drm_plane_state *old_plane_state,
       const struct drm_plane_state *new_plane_state)
{
 if (!old_plane_state->crtc || !new_plane_state->crtc)
  return 0;

 if (old_plane_state->crtc == new_plane_state->crtc)
  return 0;






 return 1;
}
