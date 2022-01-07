
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
struct drm_crtc {TYPE_2__ base; int state; } ;
struct TYPE_4__ {scalar_t__ enable_bw_release; } ;
struct dpu_kms {TYPE_1__ perf; int bandwidth_ref; int catalog; } ;
struct dpu_crtc_state {int dummy; } ;
struct TYPE_6__ {scalar_t__ bw_ctl; } ;
struct dpu_crtc {TYPE_3__ cur_perf; } ;


 int DPU_DEBUG (char*,int ) ;
 int DPU_ERROR (char*) ;
 int _dpu_core_perf_crtc_update_bus (struct dpu_kms*,struct drm_crtc*) ;
 struct dpu_kms* _dpu_crtc_get_kms (struct drm_crtc*) ;
 scalar_t__ atomic_dec_return (int *) ;
 struct dpu_crtc* to_dpu_crtc (struct drm_crtc*) ;
 struct dpu_crtc_state* to_dpu_crtc_state (int ) ;
 int trace_dpu_cmd_release_bw (int ) ;

void dpu_core_perf_crtc_release_bw(struct drm_crtc *crtc)
{
 struct dpu_crtc *dpu_crtc;
 struct dpu_crtc_state *dpu_cstate;
 struct dpu_kms *kms;

 if (!crtc) {
  DPU_ERROR("invalid crtc\n");
  return;
 }

 kms = _dpu_crtc_get_kms(crtc);
 if (!kms || !kms->catalog) {
  DPU_ERROR("invalid kms\n");
  return;
 }

 dpu_crtc = to_dpu_crtc(crtc);
 dpu_cstate = to_dpu_crtc_state(crtc->state);

 if (atomic_dec_return(&kms->bandwidth_ref) > 0)
  return;


 if (kms->perf.enable_bw_release) {
  trace_dpu_cmd_release_bw(crtc->base.id);
  DPU_DEBUG("Release BW crtc=%d\n", crtc->base.id);
  dpu_crtc->cur_perf.bw_ctl = 0;
  _dpu_core_perf_crtc_update_bus(kms, crtc);
 }
}
