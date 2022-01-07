
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sun4i_crtc {int tcon; } ;
struct drm_encoder {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_2__* state; TYPE_1__* dev; } ;
struct TYPE_4__ {int * event; int active; } ;
struct TYPE_3__ {int event_lock; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 struct sun4i_crtc* drm_crtc_to_sun4i_crtc (struct drm_crtc*) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct drm_encoder* sun4i_crtc_get_encoder (struct drm_crtc*) ;
 int sun4i_tcon_set_status (int ,struct drm_encoder*,int) ;

__attribute__((used)) static void sun4i_crtc_atomic_disable(struct drm_crtc *crtc,
          struct drm_crtc_state *old_state)
{
 struct drm_encoder *encoder = sun4i_crtc_get_encoder(crtc);
 struct sun4i_crtc *scrtc = drm_crtc_to_sun4i_crtc(crtc);

 DRM_DEBUG_DRIVER("Disabling the CRTC\n");

 drm_crtc_vblank_off(crtc);

 sun4i_tcon_set_status(scrtc->tcon, encoder, 0);

 if (crtc->state->event && !crtc->state->active) {
  spin_lock_irq(&crtc->dev->event_lock);
  drm_crtc_send_vblank_event(crtc, crtc->state->event);
  spin_unlock_irq(&crtc->dev->event_lock);

  crtc->state->event = ((void*)0);
 }
}
