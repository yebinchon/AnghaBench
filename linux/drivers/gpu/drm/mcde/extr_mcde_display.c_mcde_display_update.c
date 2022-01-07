
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mcde {int dev; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct drm_crtc {struct drm_device* dev; TYPE_1__* state; } ;
struct drm_simple_display_pipe {struct drm_plane plane; struct drm_crtc crtc; } ;
struct drm_plane_state {struct drm_framebuffer* fb; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_device {int event_lock; struct mcde* dev_private; } ;
struct TYPE_2__ {scalar_t__ active; struct drm_pending_vblank_event* event; } ;


 int dev_dbg (int ,char*) ;
 int dev_info (int ,char*) ;
 int dev_info_once (int ,char*) ;
 int drm_crtc_arm_vblank_event (struct drm_crtc*,struct drm_pending_vblank_event*) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,struct drm_pending_vblank_event*) ;
 scalar_t__ drm_crtc_vblank_get (struct drm_crtc*) ;
 int drm_fb_cma_get_gem_addr (struct drm_framebuffer*,struct drm_plane_state*,int ) ;
 int mcde_display_send_one_frame (struct mcde*) ;
 int mcde_set_extsrc (struct mcde*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void mcde_display_update(struct drm_simple_display_pipe *pipe,
    struct drm_plane_state *old_pstate)
{
 struct drm_crtc *crtc = &pipe->crtc;
 struct drm_device *drm = crtc->dev;
 struct mcde *mcde = drm->dev_private;
 struct drm_pending_vblank_event *event = crtc->state->event;
 struct drm_plane *plane = &pipe->plane;
 struct drm_plane_state *pstate = plane->state;
 struct drm_framebuffer *fb = pstate->fb;






 if (event) {
  crtc->state->event = ((void*)0);

  spin_lock_irq(&crtc->dev->event_lock);







  if (crtc->state->active && drm_crtc_vblank_get(crtc) == 0) {
   dev_dbg(mcde->dev, "arm vblank event\n");
   drm_crtc_arm_vblank_event(crtc, event);
  } else {
   dev_dbg(mcde->dev, "insert fake vblank event\n");
   drm_crtc_send_vblank_event(crtc, event);
  }

  spin_unlock_irq(&crtc->dev->event_lock);
 }






 if (fb) {
  mcde_set_extsrc(mcde, drm_fb_cma_get_gem_addr(fb, pstate, 0));

  mcde_display_send_one_frame(mcde);
  dev_info_once(mcde->dev, "sent first display update\n");
 } else {





  dev_info(mcde->dev, "ignored a display update\n");
 }
}
