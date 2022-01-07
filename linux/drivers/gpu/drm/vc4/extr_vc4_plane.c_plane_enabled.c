
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {scalar_t__ crtc; scalar_t__ fb; } ;



__attribute__((used)) static bool plane_enabled(struct drm_plane_state *state)
{
 return state->fb && state->crtc;
}
