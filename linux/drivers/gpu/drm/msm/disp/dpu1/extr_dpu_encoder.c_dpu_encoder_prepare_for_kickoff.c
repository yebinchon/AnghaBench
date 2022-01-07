
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct dpu_encoder_virt {unsigned int num_phys_encs; struct dpu_encoder_phys** phys_encs; } ;
struct TYPE_2__ {int (* prepare_for_kickoff ) (struct dpu_encoder_phys*) ;} ;
struct dpu_encoder_phys {scalar_t__ enable_state; TYPE_1__ ops; } ;


 int DPU_ATRACE_BEGIN (char*) ;
 int DPU_ATRACE_END (char*) ;
 scalar_t__ DPU_ENC_ERR_NEEDS_HW_RESET ;
 int DPU_ENC_RC_EVENT_KICKOFF ;
 int DRMID (struct drm_encoder*) ;
 int dpu_encoder_helper_hw_reset (struct dpu_encoder_phys*) ;
 int dpu_encoder_resource_control (struct drm_encoder*,int ) ;
 int stub1 (struct dpu_encoder_phys*) ;
 struct dpu_encoder_virt* to_dpu_encoder_virt (struct drm_encoder*) ;
 int trace_dpu_enc_prepare_kickoff (int ) ;
 int trace_dpu_enc_prepare_kickoff_reset (int ) ;

void dpu_encoder_prepare_for_kickoff(struct drm_encoder *drm_enc)
{
 struct dpu_encoder_virt *dpu_enc;
 struct dpu_encoder_phys *phys;
 bool needs_hw_reset = 0;
 unsigned int i;

 dpu_enc = to_dpu_encoder_virt(drm_enc);

 trace_dpu_enc_prepare_kickoff(DRMID(drm_enc));


 DPU_ATRACE_BEGIN("enc_prepare_for_kickoff");
 for (i = 0; i < dpu_enc->num_phys_encs; i++) {
  phys = dpu_enc->phys_encs[i];
  if (phys) {
   if (phys->ops.prepare_for_kickoff)
    phys->ops.prepare_for_kickoff(phys);
   if (phys->enable_state == DPU_ENC_ERR_NEEDS_HW_RESET)
    needs_hw_reset = 1;
  }
 }
 DPU_ATRACE_END("enc_prepare_for_kickoff");

 dpu_encoder_resource_control(drm_enc, DPU_ENC_RC_EVENT_KICKOFF);


 if (needs_hw_reset) {
  trace_dpu_enc_prepare_kickoff_reset(DRMID(drm_enc));
  for (i = 0; i < dpu_enc->num_phys_encs; i++) {
   dpu_encoder_helper_hw_reset(dpu_enc->phys_encs[i]);
  }
 }
}
