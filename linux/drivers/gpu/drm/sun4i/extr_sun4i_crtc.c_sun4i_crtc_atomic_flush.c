
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sun4i_crtc {int engine; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; TYPE_2__* state; } ;
struct TYPE_4__ {struct drm_pending_vblank_event* event; } ;
struct TYPE_3__ {int event_lock; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int drm_crtc_arm_vblank_event (struct drm_crtc*,struct drm_pending_vblank_event*) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,struct drm_pending_vblank_event*) ;
 struct sun4i_crtc* drm_crtc_to_sun4i_crtc (struct drm_crtc*) ;
 scalar_t__ drm_crtc_vblank_get (struct drm_crtc*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int sunxi_engine_commit (int ) ;

__attribute__((used)) static void sun4i_crtc_atomic_flush(struct drm_crtc *crtc,
        struct drm_crtc_state *old_state)
{
 struct sun4i_crtc *scrtc = drm_crtc_to_sun4i_crtc(crtc);
 struct drm_pending_vblank_event *event = crtc->state->event;

 DRM_DEBUG_DRIVER("Committing plane changes\n");

 sunxi_engine_commit(scrtc->engine);

 if (event) {
  crtc->state->event = ((void*)0);

  spin_lock_irq(&crtc->dev->event_lock);
  if (drm_crtc_vblank_get(crtc) == 0)
   drm_crtc_arm_vblank_event(crtc, event);
  else
   drm_crtc_send_vblank_event(crtc, event);
  spin_unlock_irq(&crtc->dev->event_lock);
 }
}
