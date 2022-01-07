
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int x1; int y1; int x2; int y2; } ;
struct drm_plane_state {TYPE_2__ src; int visible; int fb; int crtc; } ;
struct TYPE_4__ {int x1; int y1; int x2; int y2; } ;
struct drm_atomic_helper_damage_iter {int full_update; scalar_t__ num_clips; int * clips; TYPE_1__ plane_src; } ;


 int * drm_helper_get_plane_damage_clips (struct drm_plane_state const*) ;
 scalar_t__ drm_plane_get_damage_clips_count (struct drm_plane_state const*) ;
 int drm_rect_equals (TYPE_2__*,TYPE_2__*) ;
 int memset (struct drm_atomic_helper_damage_iter*,int ,int) ;

void
drm_atomic_helper_damage_iter_init(struct drm_atomic_helper_damage_iter *iter,
       const struct drm_plane_state *old_state,
       const struct drm_plane_state *state)
{
 memset(iter, 0, sizeof(*iter));

 if (!state || !state->crtc || !state->fb || !state->visible)
  return;

 iter->clips = drm_helper_get_plane_damage_clips(state);
 iter->num_clips = drm_plane_get_damage_clips_count(state);


 iter->plane_src.x1 = state->src.x1 >> 16;
 iter->plane_src.y1 = state->src.y1 >> 16;
 iter->plane_src.x2 = (state->src.x2 >> 16) + !!(state->src.x2 & 0xFFFF);
 iter->plane_src.y2 = (state->src.y2 >> 16) + !!(state->src.y2 & 0xFFFF);

 if (!iter->clips || !drm_rect_equals(&state->src, &old_state->src)) {
  iter->clips = ((void*)0);
  iter->num_clips = 0;
  iter->full_update = 1;
 }
}
