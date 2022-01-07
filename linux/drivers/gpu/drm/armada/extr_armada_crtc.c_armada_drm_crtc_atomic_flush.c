
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_crtc_state {int dummy; } ;
struct TYPE_2__ {int id; } ;
struct drm_crtc {int state; int name; TYPE_1__ base; } ;
struct armada_crtc {int update_pending; int irq_lock; int regs; int regs_idx; } ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;
 int DUMB_FRAMEDONE_ENA ;
 int armada_drm_crtc_enable_irq (struct armada_crtc*,int ) ;
 int armada_drm_crtc_queue_state_event (struct drm_crtc*) ;
 int armada_drm_crtc_update_regs (struct armada_crtc*,int ) ;
 int armada_reg_queue_end (int ,int ) ;
 int drm_atomic_crtc_needs_modeset (int ) ;
 struct armada_crtc* drm_to_armada_crtc (struct drm_crtc*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void armada_drm_crtc_atomic_flush(struct drm_crtc *crtc,
      struct drm_crtc_state *old_crtc_state)
{
 struct armada_crtc *dcrtc = drm_to_armada_crtc(crtc);

 DRM_DEBUG_KMS("[CRTC:%d:%s]\n", crtc->base.id, crtc->name);

 armada_reg_queue_end(dcrtc->regs, dcrtc->regs_idx);





 if (!drm_atomic_crtc_needs_modeset(crtc->state)) {
  dcrtc->update_pending = 1;
  armada_drm_crtc_queue_state_event(crtc);
  spin_lock_irq(&dcrtc->irq_lock);
  armada_drm_crtc_enable_irq(dcrtc, DUMB_FRAMEDONE_ENA);
  spin_unlock_irq(&dcrtc->irq_lock);
 } else {
  spin_lock_irq(&dcrtc->irq_lock);
  armada_drm_crtc_update_regs(dcrtc, dcrtc->regs);
  spin_unlock_irq(&dcrtc->irq_lock);
 }
}
