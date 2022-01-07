
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int visible; } ;



__attribute__((used)) static bool plane_enabled(struct drm_plane_state *state)
{
 return state->visible;
}
