
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct dpu_encoder_phys {int underrun_cnt; } ;


 int DPU_ATRACE_BEGIN (char*) ;
 int DPU_ATRACE_END (char*) ;
 int DRMID (struct drm_encoder*) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int trace_dpu_enc_underrun_cb (int ,int ) ;

__attribute__((used)) static void dpu_encoder_underrun_callback(struct drm_encoder *drm_enc,
  struct dpu_encoder_phys *phy_enc)
{
 if (!phy_enc)
  return;

 DPU_ATRACE_BEGIN("encoder_underrun_callback");
 atomic_inc(&phy_enc->underrun_cnt);
 trace_dpu_enc_underrun_cb(DRMID(drm_enc),
      atomic_read(&phy_enc->underrun_cnt));
 DPU_ATRACE_END("encoder_underrun_callback");
}
