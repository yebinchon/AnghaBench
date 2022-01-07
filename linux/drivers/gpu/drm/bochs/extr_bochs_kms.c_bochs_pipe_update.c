
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; } ;
struct drm_crtc {TYPE_3__* dev; TYPE_2__* state; } ;
struct drm_simple_display_pipe {TYPE_1__ plane; struct drm_crtc crtc; } ;
struct drm_plane_state {int dummy; } ;
struct bochs_device {int dummy; } ;
struct TYPE_6__ {int event_lock; struct bochs_device* dev_private; } ;
struct TYPE_5__ {int * event; } ;


 int bochs_plane_update (struct bochs_device*,int ) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void bochs_pipe_update(struct drm_simple_display_pipe *pipe,
         struct drm_plane_state *old_state)
{
 struct bochs_device *bochs = pipe->crtc.dev->dev_private;
 struct drm_crtc *crtc = &pipe->crtc;

 bochs_plane_update(bochs, pipe->plane.state);

 if (crtc->state->event) {
  spin_lock_irq(&crtc->dev->event_lock);
  drm_crtc_send_vblank_event(crtc, crtc->state->event);
  crtc->state->event = ((void*)0);
  spin_unlock_irq(&crtc->dev->event_lock);
 }
}
