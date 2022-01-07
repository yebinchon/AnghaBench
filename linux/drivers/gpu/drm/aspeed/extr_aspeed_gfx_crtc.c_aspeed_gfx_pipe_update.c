
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* state; } ;
struct drm_crtc {TYPE_4__* dev; TYPE_3__* state; } ;
struct drm_simple_display_pipe {TYPE_2__ plane; struct drm_crtc crtc; } ;
struct drm_plane_state {int dummy; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_gem_cma_object {int paddr; } ;
struct drm_framebuffer {int dummy; } ;
struct aspeed_gfx {scalar_t__ base; } ;
struct TYPE_8__ {int event_lock; } ;
struct TYPE_7__ {struct drm_pending_vblank_event* event; } ;
struct TYPE_5__ {struct drm_framebuffer* fb; } ;


 scalar_t__ CRT_ADDR ;
 int drm_crtc_arm_vblank_event (struct drm_crtc*,struct drm_pending_vblank_event*) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,struct drm_pending_vblank_event*) ;
 scalar_t__ drm_crtc_vblank_get (struct drm_crtc*) ;
 struct drm_gem_cma_object* drm_fb_cma_get_gem_obj (struct drm_framebuffer*,int ) ;
 struct aspeed_gfx* drm_pipe_to_aspeed_gfx (struct drm_simple_display_pipe*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void aspeed_gfx_pipe_update(struct drm_simple_display_pipe *pipe,
       struct drm_plane_state *plane_state)
{
 struct aspeed_gfx *priv = drm_pipe_to_aspeed_gfx(pipe);
 struct drm_crtc *crtc = &pipe->crtc;
 struct drm_framebuffer *fb = pipe->plane.state->fb;
 struct drm_pending_vblank_event *event;
 struct drm_gem_cma_object *gem;

 spin_lock_irq(&crtc->dev->event_lock);
 event = crtc->state->event;
 if (event) {
  crtc->state->event = ((void*)0);

  if (drm_crtc_vblank_get(crtc) == 0)
   drm_crtc_arm_vblank_event(crtc, event);
  else
   drm_crtc_send_vblank_event(crtc, event);
 }
 spin_unlock_irq(&crtc->dev->event_lock);

 if (!fb)
  return;

 gem = drm_fb_cma_get_gem_obj(fb, 0);
 if (!gem)
  return;
 writel(gem->paddr, priv->base + CRT_ADDR);
}
