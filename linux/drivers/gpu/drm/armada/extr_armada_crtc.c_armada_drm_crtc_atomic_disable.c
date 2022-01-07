
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct drm_pending_vblank_event {int dummy; } ;
struct TYPE_7__ {int flags; } ;
struct drm_crtc_state {TYPE_2__ adjusted_mode; } ;
struct TYPE_6__ {int id; } ;
struct drm_crtc {TYPE_5__* dev; TYPE_4__* state; int name; TYPE_1__ base; } ;
struct armada_crtc {TYPE_3__* variant; } ;
struct TYPE_10__ {int event_lock; } ;
struct TYPE_9__ {struct drm_pending_vblank_event* event; int active; } ;
struct TYPE_8__ {int (* disable ) (struct armada_crtc*) ;} ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;
 int DRM_MODE_FLAG_INTERLACE ;
 int armada_drm_crtc_update (struct armada_crtc*,int) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,struct drm_pending_vblank_event*) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int drm_crtc_vblank_put (struct drm_crtc*) ;
 struct armada_crtc* drm_to_armada_crtc (struct drm_crtc*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct armada_crtc*) ;

__attribute__((used)) static void armada_drm_crtc_atomic_disable(struct drm_crtc *crtc,
        struct drm_crtc_state *old_state)
{
 struct armada_crtc *dcrtc = drm_to_armada_crtc(crtc);
 struct drm_pending_vblank_event *event;

 DRM_DEBUG_KMS("[CRTC:%d:%s]\n", crtc->base.id, crtc->name);

 if (old_state->adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
  drm_crtc_vblank_put(crtc);

 drm_crtc_vblank_off(crtc);
 armada_drm_crtc_update(dcrtc, 0);

 if (!crtc->state->active) {




  if (dcrtc->variant->disable)
   dcrtc->variant->disable(dcrtc);





  event = crtc->state->event;
  crtc->state->event = ((void*)0);
  if (event) {
   spin_lock_irq(&crtc->dev->event_lock);
   drm_crtc_send_vblank_event(crtc, event);
   spin_unlock_irq(&crtc->dev->event_lock);
  }
 }
}
