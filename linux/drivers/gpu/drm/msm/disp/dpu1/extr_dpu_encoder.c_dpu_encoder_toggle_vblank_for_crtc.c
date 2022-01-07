
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct dpu_encoder_virt {int num_phys_encs; struct dpu_encoder_phys** phys_encs; int enc_spinlock; struct drm_crtc* crtc; } ;
struct TYPE_2__ {int (* control_vblank_irq ) (struct dpu_encoder_phys*,int) ;} ;
struct dpu_encoder_phys {TYPE_1__ ops; } ;


 int DRMID (struct drm_encoder*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct dpu_encoder_phys*,int) ;
 struct dpu_encoder_virt* to_dpu_encoder_virt (struct drm_encoder*) ;
 int trace_dpu_enc_vblank_cb (int ,int) ;

void dpu_encoder_toggle_vblank_for_crtc(struct drm_encoder *drm_enc,
     struct drm_crtc *crtc, bool enable)
{
 struct dpu_encoder_virt *dpu_enc = to_dpu_encoder_virt(drm_enc);
 unsigned long lock_flags;
 int i;

 trace_dpu_enc_vblank_cb(DRMID(drm_enc), enable);

 spin_lock_irqsave(&dpu_enc->enc_spinlock, lock_flags);
 if (dpu_enc->crtc != crtc) {
  spin_unlock_irqrestore(&dpu_enc->enc_spinlock, lock_flags);
  return;
 }
 spin_unlock_irqrestore(&dpu_enc->enc_spinlock, lock_flags);

 for (i = 0; i < dpu_enc->num_phys_encs; i++) {
  struct dpu_encoder_phys *phys = dpu_enc->phys_encs[i];

  if (phys && phys->ops.control_vblank_irq)
   phys->ops.control_vblank_irq(phys, enable);
 }
}
