
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct drm_crtc_state {int dummy; } ;
struct TYPE_10__ {int id; } ;
struct drm_crtc {TYPE_5__ base; } ;
struct TYPE_8__ {scalar_t__ mode; } ;
struct TYPE_9__ {unsigned long long fix_core_ab_vote; unsigned long long fix_core_ib_vote; scalar_t__ fix_core_clk_rate; TYPE_3__ perf_tune; scalar_t__ max_core_clk_rate; } ;
struct dpu_kms {TYPE_4__ perf; TYPE_2__* catalog; } ;
struct dpu_crtc_state {int bw_control; } ;
struct dpu_core_perf_params {unsigned long long bw_ctl; unsigned long long max_per_pipe_ib; scalar_t__ core_clk_rate; } ;
struct TYPE_6__ {unsigned long long max_bw_high; } ;
struct TYPE_7__ {TYPE_1__ perf; } ;


 int DPU_DEBUG (char*,int ,scalar_t__,unsigned long long,unsigned long long) ;
 int DPU_ERROR (char*) ;
 scalar_t__ DPU_PERF_MODE_FIXED ;
 scalar_t__ DPU_PERF_MODE_MINIMUM ;
 int memset (struct dpu_core_perf_params*,int ,int) ;
 struct dpu_crtc_state* to_dpu_crtc_state (struct drm_crtc_state*) ;

__attribute__((used)) static void _dpu_core_perf_calc_crtc(struct dpu_kms *kms,
  struct drm_crtc *crtc,
  struct drm_crtc_state *state,
  struct dpu_core_perf_params *perf)
{
 struct dpu_crtc_state *dpu_cstate;

 if (!kms || !kms->catalog || !crtc || !state || !perf) {
  DPU_ERROR("invalid parameters\n");
  return;
 }

 dpu_cstate = to_dpu_crtc_state(state);
 memset(perf, 0, sizeof(struct dpu_core_perf_params));

 if (!dpu_cstate->bw_control) {
  perf->bw_ctl = kms->catalog->perf.max_bw_high *
     1000ULL;
  perf->max_per_pipe_ib = perf->bw_ctl;
  perf->core_clk_rate = kms->perf.max_core_clk_rate;
 } else if (kms->perf.perf_tune.mode == DPU_PERF_MODE_MINIMUM) {
  perf->bw_ctl = 0;
  perf->max_per_pipe_ib = 0;
  perf->core_clk_rate = 0;
 } else if (kms->perf.perf_tune.mode == DPU_PERF_MODE_FIXED) {
  perf->bw_ctl = kms->perf.fix_core_ab_vote;
  perf->max_per_pipe_ib = kms->perf.fix_core_ib_vote;
  perf->core_clk_rate = kms->perf.fix_core_clk_rate;
 }

 DPU_DEBUG(
  "crtc=%d clk_rate=%llu core_ib=%llu core_ab=%llu\n",
   crtc->base.id, perf->core_clk_rate,
   perf->max_per_pipe_ib, perf->bw_ctl);
}
