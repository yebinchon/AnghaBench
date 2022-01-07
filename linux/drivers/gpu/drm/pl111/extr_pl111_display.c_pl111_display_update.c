
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pl111_drm_dev_private {scalar_t__ regs; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct drm_crtc {struct drm_device* dev; TYPE_1__* state; } ;
struct drm_simple_display_pipe {struct drm_plane plane; struct drm_crtc crtc; } ;
struct drm_plane_state {struct drm_framebuffer* fb; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_device {int event_lock; struct pl111_drm_dev_private* dev_private; } ;
struct TYPE_2__ {scalar_t__ active; struct drm_pending_vblank_event* event; } ;


 scalar_t__ CLCD_UBAS ;
 int drm_crtc_arm_vblank_event (struct drm_crtc*,struct drm_pending_vblank_event*) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,struct drm_pending_vblank_event*) ;
 scalar_t__ drm_crtc_vblank_get (struct drm_crtc*) ;
 int drm_fb_cma_get_gem_addr (struct drm_framebuffer*,struct drm_plane_state*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void pl111_display_update(struct drm_simple_display_pipe *pipe,
     struct drm_plane_state *old_pstate)
{
 struct drm_crtc *crtc = &pipe->crtc;
 struct drm_device *drm = crtc->dev;
 struct pl111_drm_dev_private *priv = drm->dev_private;
 struct drm_pending_vblank_event *event = crtc->state->event;
 struct drm_plane *plane = &pipe->plane;
 struct drm_plane_state *pstate = plane->state;
 struct drm_framebuffer *fb = pstate->fb;

 if (fb) {
  u32 addr = drm_fb_cma_get_gem_addr(fb, pstate, 0);

  writel(addr, priv->regs + CLCD_UBAS);
 }

 if (event) {
  crtc->state->event = ((void*)0);

  spin_lock_irq(&crtc->dev->event_lock);
  if (crtc->state->active && drm_crtc_vblank_get(crtc) == 0)
   drm_crtc_arm_vblank_event(crtc, event);
  else
   drm_crtc_send_vblank_event(crtc, event);
  spin_unlock_irq(&crtc->dev->event_lock);
 }
}
