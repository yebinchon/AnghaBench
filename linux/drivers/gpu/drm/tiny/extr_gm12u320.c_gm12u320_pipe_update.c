
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct drm_plane_state* state; } ;
struct drm_crtc {TYPE_2__* dev; TYPE_1__* state; } ;
struct drm_simple_display_pipe {TYPE_3__ plane; struct drm_crtc crtc; } ;
struct drm_rect {int dummy; } ;
struct drm_plane_state {int fb; } ;
struct TYPE_5__ {int event_lock; } ;
struct TYPE_4__ {int * event; } ;


 scalar_t__ drm_atomic_helper_damage_merged (struct drm_plane_state*,struct drm_plane_state*,struct drm_rect*) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 int gm12u320_fb_mark_dirty (int ,struct drm_rect*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void gm12u320_pipe_update(struct drm_simple_display_pipe *pipe,
     struct drm_plane_state *old_state)
{
 struct drm_plane_state *state = pipe->plane.state;
 struct drm_crtc *crtc = &pipe->crtc;
 struct drm_rect rect;

 if (drm_atomic_helper_damage_merged(old_state, state, &rect))
  gm12u320_fb_mark_dirty(pipe->plane.state->fb, &rect);

 if (crtc->state->event) {
  spin_lock_irq(&crtc->dev->event_lock);
  drm_crtc_send_vblank_event(crtc, crtc->state->event);
  crtc->state->event = ((void*)0);
  spin_unlock_irq(&crtc->dev->event_lock);
 }
}
