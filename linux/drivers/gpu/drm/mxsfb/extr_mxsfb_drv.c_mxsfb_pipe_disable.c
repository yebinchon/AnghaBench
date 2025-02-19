
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mxsfb_drm_private {int panel; } ;
struct drm_crtc {TYPE_1__* state; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct drm_simple_display_pipe {struct drm_crtc crtc; TYPE_2__ plane; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_device {int event_lock; int dev; } ;
struct TYPE_3__ {struct drm_pending_vblank_event* event; } ;


 int drm_crtc_send_vblank_event (struct drm_crtc*,struct drm_pending_vblank_event*) ;
 int drm_panel_disable (int ) ;
 int drm_panel_unprepare (int ) ;
 struct mxsfb_drm_private* drm_pipe_to_mxsfb_drm_private (struct drm_simple_display_pipe*) ;
 int mxsfb_crtc_disable (struct mxsfb_drm_private*) ;
 int pm_runtime_put_sync (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
{
 struct mxsfb_drm_private *mxsfb = drm_pipe_to_mxsfb_drm_private(pipe);
 struct drm_device *drm = pipe->plane.dev;
 struct drm_crtc *crtc = &pipe->crtc;
 struct drm_pending_vblank_event *event;

 drm_panel_disable(mxsfb->panel);
 mxsfb_crtc_disable(mxsfb);
 drm_panel_unprepare(mxsfb->panel);
 pm_runtime_put_sync(drm->dev);

 spin_lock_irq(&drm->event_lock);
 event = crtc->state->event;
 if (event) {
  crtc->state->event = ((void*)0);
  drm_crtc_send_vblank_event(crtc, event);
 }
 spin_unlock_irq(&drm->event_lock);
}
