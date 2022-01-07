
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ltdc_device {int regs; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_device {int event_lock; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* state; struct drm_device* dev; } ;
struct TYPE_2__ {struct drm_pending_vblank_event* event; } ;


 int DRM_DEBUG_ATOMIC (char*) ;
 int LTDC_SRCR ;
 int SRCR_VBR ;
 struct ltdc_device* crtc_to_ltdc (struct drm_crtc*) ;
 int drm_crtc_arm_vblank_event (struct drm_crtc*,struct drm_pending_vblank_event*) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,struct drm_pending_vblank_event*) ;
 scalar_t__ drm_crtc_vblank_get (struct drm_crtc*) ;
 int ltdc_crtc_update_clut (struct drm_crtc*) ;
 int reg_set (int ,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void ltdc_crtc_atomic_flush(struct drm_crtc *crtc,
       struct drm_crtc_state *old_crtc_state)
{
 struct ltdc_device *ldev = crtc_to_ltdc(crtc);
 struct drm_device *ddev = crtc->dev;
 struct drm_pending_vblank_event *event = crtc->state->event;

 DRM_DEBUG_ATOMIC("\n");

 ltdc_crtc_update_clut(crtc);


 reg_set(ldev->regs, LTDC_SRCR, SRCR_VBR);

 if (event) {
  crtc->state->event = ((void*)0);

  spin_lock_irq(&ddev->event_lock);
  if (drm_crtc_vblank_get(crtc) == 0)
   drm_crtc_arm_vblank_event(crtc, event);
  else
   drm_crtc_send_vblank_event(crtc, event);
  spin_unlock_irq(&ddev->event_lock);
 }
}
