
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_crtc {TYPE_2__* dev; TYPE_1__* state; } ;
struct drm_simple_display_pipe {struct drm_crtc crtc; } ;
struct mxsfb_drm_private {TYPE_3__* devdata; scalar_t__ base; struct drm_simple_display_pipe pipe; } ;
struct drm_plane_state {int dummy; } ;
struct drm_pending_vblank_event {int dummy; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_6__ {scalar_t__ next_buf; } ;
struct TYPE_5__ {int event_lock; } ;
struct TYPE_4__ {struct drm_pending_vblank_event* event; } ;


 int drm_crtc_arm_vblank_event (struct drm_crtc*,struct drm_pending_vblank_event*) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,struct drm_pending_vblank_event*) ;
 scalar_t__ drm_crtc_vblank_get (struct drm_crtc*) ;
 int mxsfb_disable_axi_clk (struct mxsfb_drm_private*) ;
 int mxsfb_enable_axi_clk (struct mxsfb_drm_private*) ;
 scalar_t__ mxsfb_get_fb_paddr (struct mxsfb_drm_private*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (scalar_t__,scalar_t__) ;

void mxsfb_plane_atomic_update(struct mxsfb_drm_private *mxsfb,
          struct drm_plane_state *state)
{
 struct drm_simple_display_pipe *pipe = &mxsfb->pipe;
 struct drm_crtc *crtc = &pipe->crtc;
 struct drm_pending_vblank_event *event;
 dma_addr_t paddr;

 spin_lock_irq(&crtc->dev->event_lock);
 event = crtc->state->event;
 if (event) {
  crtc->state->event = ((void*)0);

  if (drm_crtc_vblank_get(crtc) == 0) {
   drm_crtc_arm_vblank_event(crtc, event);
  } else {
   drm_crtc_send_vblank_event(crtc, event);
  }
 }
 spin_unlock_irq(&crtc->dev->event_lock);

 paddr = mxsfb_get_fb_paddr(mxsfb);
 if (paddr) {
  mxsfb_enable_axi_clk(mxsfb);
  writel(paddr, mxsfb->base + mxsfb->devdata->next_buf);
  mxsfb_disable_axi_clk(mxsfb);
 }
}
