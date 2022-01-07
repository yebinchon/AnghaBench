
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_8__ {int size; int pos; scalar_t__ enabled; } ;
struct intel_crtc_scaler_state {scalar_t__ scaler_id; TYPE_3__* scalers; } ;
struct TYPE_5__ {int crtc; } ;
struct intel_crtc_state {int pipe_src_w; int pipe_src_h; TYPE_4__ pch_pfit; struct intel_crtc_scaler_state scaler_state; TYPE_1__ base; } ;
struct TYPE_6__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_7__ {int mode; } ;


 int I915_WRITE (int ,int) ;
 int I915_WRITE_FW (int ,int) ;
 int PS_FILTER_MEDIUM ;
 int PS_SCALER_EN ;
 int PS_UV_RGB_PHASE (int ) ;
 int PS_Y_PHASE (int ) ;
 int SKL_PS_CTRL (int,int) ;
 int SKL_PS_HPHASE (int,int) ;
 int SKL_PS_VPHASE (int,int) ;
 int SKL_PS_WIN_POS (int,int) ;
 int SKL_PS_WIN_SZ (int,int) ;
 scalar_t__ WARN_ON (int) ;
 int skl_scaler_calc_phase (int,int,int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void skylake_pfit_enable(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;
 const struct intel_crtc_scaler_state *scaler_state =
  &crtc_state->scaler_state;

 if (crtc_state->pch_pfit.enabled) {
  u16 uv_rgb_hphase, uv_rgb_vphase;
  int pfit_w, pfit_h, hscale, vscale;
  int id;

  if (WARN_ON(crtc_state->scaler_state.scaler_id < 0))
   return;

  pfit_w = (crtc_state->pch_pfit.size >> 16) & 0xFFFF;
  pfit_h = crtc_state->pch_pfit.size & 0xFFFF;

  hscale = (crtc_state->pipe_src_w << 16) / pfit_w;
  vscale = (crtc_state->pipe_src_h << 16) / pfit_h;

  uv_rgb_hphase = skl_scaler_calc_phase(1, hscale, 0);
  uv_rgb_vphase = skl_scaler_calc_phase(1, vscale, 0);

  id = scaler_state->scaler_id;
  I915_WRITE(SKL_PS_CTRL(pipe, id), PS_SCALER_EN |
   PS_FILTER_MEDIUM | scaler_state->scalers[id].mode);
  I915_WRITE_FW(SKL_PS_VPHASE(pipe, id),
         PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_vphase));
  I915_WRITE_FW(SKL_PS_HPHASE(pipe, id),
         PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_hphase));
  I915_WRITE(SKL_PS_WIN_POS(pipe, id), crtc_state->pch_pfit.pos);
  I915_WRITE(SKL_PS_WIN_SZ(pipe, id), crtc_state->pch_pfit.size);
 }
}
