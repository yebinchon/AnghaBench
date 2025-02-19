
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tve200_drm_dev_private {scalar_t__ regs; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct drm_crtc {struct drm_device* dev; TYPE_2__* state; } ;
struct drm_simple_display_pipe {struct drm_plane plane; struct drm_crtc crtc; } ;
struct drm_plane_state {struct drm_framebuffer* fb; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_framebuffer {TYPE_1__* format; } ;
struct drm_device {int event_lock; struct tve200_drm_dev_private* dev_private; } ;
struct TYPE_4__ {scalar_t__ active; struct drm_pending_vblank_event* event; } ;
struct TYPE_3__ {scalar_t__ format; } ;


 scalar_t__ DRM_FORMAT_YUV420 ;
 scalar_t__ TVE200_U_FRAME_BASE_ADDR ;
 scalar_t__ TVE200_V_FRAME_BASE_ADDR ;
 scalar_t__ TVE200_Y_FRAME_BASE_ADDR ;
 int drm_crtc_arm_vblank_event (struct drm_crtc*,struct drm_pending_vblank_event*) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,struct drm_pending_vblank_event*) ;
 scalar_t__ drm_crtc_vblank_get (struct drm_crtc*) ;
 int drm_fb_cma_get_gem_addr (struct drm_framebuffer*,struct drm_plane_state*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void tve200_display_update(struct drm_simple_display_pipe *pipe,
     struct drm_plane_state *old_pstate)
{
 struct drm_crtc *crtc = &pipe->crtc;
 struct drm_device *drm = crtc->dev;
 struct tve200_drm_dev_private *priv = drm->dev_private;
 struct drm_pending_vblank_event *event = crtc->state->event;
 struct drm_plane *plane = &pipe->plane;
 struct drm_plane_state *pstate = plane->state;
 struct drm_framebuffer *fb = pstate->fb;

 if (fb) {

  writel(drm_fb_cma_get_gem_addr(fb, pstate, 0),
         priv->regs + TVE200_Y_FRAME_BASE_ADDR);


  if (fb->format->format == DRM_FORMAT_YUV420) {
   writel(drm_fb_cma_get_gem_addr(fb, pstate, 1),
          priv->regs + TVE200_U_FRAME_BASE_ADDR);
   writel(drm_fb_cma_get_gem_addr(fb, pstate, 2),
          priv->regs + TVE200_V_FRAME_BASE_ADDR);
  }
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
