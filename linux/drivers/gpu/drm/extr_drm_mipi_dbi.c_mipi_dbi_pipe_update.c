
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_crtc {TYPE_2__* state; TYPE_1__* dev; } ;
struct TYPE_6__ {struct drm_plane_state* state; } ;
struct drm_simple_display_pipe {struct drm_crtc crtc; TYPE_3__ plane; } ;
struct drm_rect {int dummy; } ;
struct drm_plane_state {int fb; } ;
struct TYPE_5__ {int * event; } ;
struct TYPE_4__ {int event_lock; } ;


 scalar_t__ drm_atomic_helper_damage_merged (struct drm_plane_state*,struct drm_plane_state*,struct drm_rect*) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 int mipi_dbi_fb_dirty (int ,struct drm_rect*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void mipi_dbi_pipe_update(struct drm_simple_display_pipe *pipe,
     struct drm_plane_state *old_state)
{
 struct drm_plane_state *state = pipe->plane.state;
 struct drm_crtc *crtc = &pipe->crtc;
 struct drm_rect rect;

 if (drm_atomic_helper_damage_merged(old_state, state, &rect))
  mipi_dbi_fb_dirty(state->fb, &rect);

 if (crtc->state->event) {
  spin_lock_irq(&crtc->dev->event_lock);
  drm_crtc_send_vblank_event(crtc, crtc->state->event);
  spin_unlock_irq(&crtc->dev->event_lock);
  crtc->state->event = ((void*)0);
 }
}
