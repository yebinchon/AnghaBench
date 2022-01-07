
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct drm_display_mode {int vdisplay; int hdisplay; } ;
struct TYPE_10__ {TYPE_2__* crtc; } ;
struct dpu_encoder_virt {int enabled; int enc_lock; TYPE_6__* cur_master; TYPE_7__* cur_slave; TYPE_3__ base; } ;
struct TYPE_11__ {int (* enable ) (TYPE_7__*) ;} ;
struct TYPE_14__ {TYPE_4__ ops; } ;
struct TYPE_12__ {int (* enable ) (TYPE_6__*) ;} ;
struct TYPE_13__ {TYPE_5__ ops; } ;
struct TYPE_9__ {TYPE_1__* state; } ;
struct TYPE_8__ {struct drm_display_mode adjusted_mode; } ;


 int DPU_ENC_RC_EVENT_KICKOFF ;
 int DPU_ERROR (char*) ;
 int DPU_ERROR_ENC (struct dpu_encoder_virt*,char*,int) ;
 int DRMID (struct drm_encoder*) ;
 int _dpu_encoder_virt_enable_helper (struct drm_encoder*) ;
 int dpu_encoder_resource_control (struct drm_encoder*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_7__*) ;
 int stub2 (TYPE_6__*) ;
 struct dpu_encoder_virt* to_dpu_encoder_virt (struct drm_encoder*) ;
 int trace_dpu_enc_enable (int ,int ,int ) ;

__attribute__((used)) static void dpu_encoder_virt_enable(struct drm_encoder *drm_enc)
{
 struct dpu_encoder_virt *dpu_enc = ((void*)0);
 int ret = 0;
 struct drm_display_mode *cur_mode = ((void*)0);

 if (!drm_enc) {
  DPU_ERROR("invalid encoder\n");
  return;
 }
 dpu_enc = to_dpu_encoder_virt(drm_enc);

 mutex_lock(&dpu_enc->enc_lock);
 cur_mode = &dpu_enc->base.crtc->state->adjusted_mode;

 trace_dpu_enc_enable(DRMID(drm_enc), cur_mode->hdisplay,
        cur_mode->vdisplay);


 if (dpu_enc->cur_slave && dpu_enc->cur_slave->ops.enable)
  dpu_enc->cur_slave->ops.enable(dpu_enc->cur_slave);

 if (dpu_enc->cur_master && dpu_enc->cur_master->ops.enable)
  dpu_enc->cur_master->ops.enable(dpu_enc->cur_master);

 ret = dpu_encoder_resource_control(drm_enc, DPU_ENC_RC_EVENT_KICKOFF);
 if (ret) {
  DPU_ERROR_ENC(dpu_enc, "dpu resource control failed: %d\n",
    ret);
  goto out;
 }

 _dpu_encoder_virt_enable_helper(drm_enc);

 dpu_enc->enabled = 1;

out:
 mutex_unlock(&dpu_enc->enc_lock);
}
