
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct dpu_encoder_virt {int enc_spinlock; struct drm_crtc* crtc; } ;


 int WARN_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct dpu_encoder_virt* to_dpu_encoder_virt (struct drm_encoder*) ;

void dpu_encoder_assign_crtc(struct drm_encoder *drm_enc, struct drm_crtc *crtc)
{
 struct dpu_encoder_virt *dpu_enc = to_dpu_encoder_virt(drm_enc);
 unsigned long lock_flags;

 spin_lock_irqsave(&dpu_enc->enc_spinlock, lock_flags);

 WARN_ON(crtc && dpu_enc->crtc);
 dpu_enc->crtc = crtc;
 spin_unlock_irqrestore(&dpu_enc->enc_spinlock, lock_flags);
}
