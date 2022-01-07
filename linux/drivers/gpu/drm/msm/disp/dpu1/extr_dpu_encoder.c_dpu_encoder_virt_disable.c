
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct msm_drm_private {int kms; } ;
struct TYPE_10__ {int id; } ;
struct drm_encoder {TYPE_5__ base; TYPE_3__* dev; TYPE_2__* crtc; } ;
struct drm_display_mode {int dummy; } ;
struct dpu_kms {int rm; } ;
struct dpu_encoder_virt {int enabled; int num_phys_encs; int enc_lock; struct dpu_encoder_phys** phys_encs; int frame_done_timer; int frame_done_timeout_ms; } ;
struct TYPE_9__ {int (* disable ) (struct dpu_encoder_phys*) ;} ;
struct dpu_encoder_phys {int * connector; TYPE_4__ ops; } ;
struct TYPE_8__ {struct msm_drm_private* dev_private; } ;
struct TYPE_7__ {TYPE_1__* state; } ;
struct TYPE_6__ {struct drm_display_mode adjusted_mode; } ;


 int DPU_DEBUG_ENC (struct dpu_encoder_virt*,char*) ;
 int DPU_ENC_RC_EVENT_PRE_STOP ;
 int DPU_ENC_RC_EVENT_STOP ;
 int DPU_ERROR (char*,...) ;
 int DRMID (struct drm_encoder*) ;
 int MSM_ENC_TX_COMPLETE ;
 scalar_t__ atomic_xchg (int *,int ) ;
 int del_timer_sync (int *) ;
 int dpu_encoder_resource_control (struct drm_encoder*,int ) ;
 int dpu_encoder_wait_for_event (struct drm_encoder*,int ) ;
 int dpu_rm_release (int *,struct drm_encoder*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct dpu_encoder_phys*) ;
 struct dpu_encoder_virt* to_dpu_encoder_virt (struct drm_encoder*) ;
 struct dpu_kms* to_dpu_kms (int ) ;
 int trace_dpu_enc_disable (int ) ;

__attribute__((used)) static void dpu_encoder_virt_disable(struct drm_encoder *drm_enc)
{
 struct dpu_encoder_virt *dpu_enc = ((void*)0);
 struct msm_drm_private *priv;
 struct dpu_kms *dpu_kms;
 struct drm_display_mode *mode;
 int i = 0;

 if (!drm_enc) {
  DPU_ERROR("invalid encoder\n");
  return;
 } else if (!drm_enc->dev) {
  DPU_ERROR("invalid dev\n");
  return;
 } else if (!drm_enc->dev->dev_private) {
  DPU_ERROR("invalid dev_private\n");
  return;
 }

 dpu_enc = to_dpu_encoder_virt(drm_enc);
 DPU_DEBUG_ENC(dpu_enc, "\n");

 mutex_lock(&dpu_enc->enc_lock);
 dpu_enc->enabled = 0;

 mode = &drm_enc->crtc->state->adjusted_mode;

 priv = drm_enc->dev->dev_private;
 dpu_kms = to_dpu_kms(priv->kms);

 trace_dpu_enc_disable(DRMID(drm_enc));


 dpu_encoder_wait_for_event(drm_enc, MSM_ENC_TX_COMPLETE);

 dpu_encoder_resource_control(drm_enc, DPU_ENC_RC_EVENT_PRE_STOP);

 for (i = 0; i < dpu_enc->num_phys_encs; i++) {
  struct dpu_encoder_phys *phys = dpu_enc->phys_encs[i];

  if (phys && phys->ops.disable)
   phys->ops.disable(phys);
 }


 if (atomic_xchg(&dpu_enc->frame_done_timeout_ms, 0)) {
  DPU_ERROR("enc%d timeout pending\n", drm_enc->base.id);
  del_timer_sync(&dpu_enc->frame_done_timer);
 }

 dpu_encoder_resource_control(drm_enc, DPU_ENC_RC_EVENT_STOP);

 for (i = 0; i < dpu_enc->num_phys_encs; i++) {
  if (dpu_enc->phys_encs[i])
   dpu_enc->phys_encs[i]->connector = ((void*)0);
 }

 DPU_DEBUG_ENC(dpu_enc, "encoder disabled\n");

 dpu_rm_release(&dpu_kms->rm, drm_enc);

 mutex_unlock(&dpu_enc->enc_lock);
}
