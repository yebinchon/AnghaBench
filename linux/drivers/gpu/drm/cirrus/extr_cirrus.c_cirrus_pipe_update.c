
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct drm_plane_state* state; } ;
struct drm_crtc {TYPE_3__* dev; TYPE_2__* state; int mode; } ;
struct drm_simple_display_pipe {TYPE_1__ plane; struct drm_crtc crtc; } ;
struct drm_rect {int dummy; } ;
struct drm_plane_state {int fb; } ;
struct cirrus_device {scalar_t__ cpp; } ;
struct TYPE_6__ {int event_lock; struct cirrus_device* dev_private; } ;
struct TYPE_5__ {int * event; } ;


 scalar_t__ cirrus_cpp (int ) ;
 int cirrus_fb_blit_rect (int ,struct drm_rect*) ;
 int cirrus_mode_set (struct cirrus_device*,int *,int ) ;
 scalar_t__ drm_atomic_helper_damage_merged (struct drm_plane_state*,struct drm_plane_state*,struct drm_rect*) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void cirrus_pipe_update(struct drm_simple_display_pipe *pipe,
          struct drm_plane_state *old_state)
{
 struct cirrus_device *cirrus = pipe->crtc.dev->dev_private;
 struct drm_plane_state *state = pipe->plane.state;
 struct drm_crtc *crtc = &pipe->crtc;
 struct drm_rect rect;

 if (pipe->plane.state->fb &&
     cirrus->cpp != cirrus_cpp(pipe->plane.state->fb))
  cirrus_mode_set(cirrus, &crtc->mode,
    pipe->plane.state->fb);

 if (drm_atomic_helper_damage_merged(old_state, state, &rect))
  cirrus_fb_blit_rect(pipe->plane.state->fb, &rect);

 if (crtc->state->event) {
  spin_lock_irq(&crtc->dev->event_lock);
  drm_crtc_send_vblank_event(crtc, crtc->state->event);
  crtc->state->event = ((void*)0);
  spin_unlock_irq(&crtc->dev->event_lock);
 }
}
