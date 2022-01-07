
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int scaler_id; } ;
struct drm_display_mode {int crtc_vdisplay; int crtc_hdisplay; } ;
struct TYPE_3__ {int active; struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {scalar_t__ output_format; int pipe_src_h; int pipe_src_w; TYPE_2__ scaler_state; TYPE_1__ base; } ;


 scalar_t__ INTEL_OUTPUT_FORMAT_YCBCR420 ;
 int SKL_CRTC_INDEX ;
 int skl_update_scaler (struct intel_crtc_state*,int,int ,int *,int ,int ,int ,int ,int *,int) ;

int skl_update_scaler_crtc(struct intel_crtc_state *state)
{
 const struct drm_display_mode *adjusted_mode = &state->base.adjusted_mode;
 bool need_scaler = 0;

 if (state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
  need_scaler = 1;

 return skl_update_scaler(state, !state->base.active, SKL_CRTC_INDEX,
     &state->scaler_state.scaler_id,
     state->pipe_src_w, state->pipe_src_h,
     adjusted_mode->crtc_hdisplay,
     adjusted_mode->crtc_vdisplay, ((void*)0), need_scaler);
}
