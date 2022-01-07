
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct TYPE_6__ {TYPE_2__* ctm; int crtc; } ;
struct intel_crtc_state {int cgm_mode; TYPE_3__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_color_ctm {unsigned long long* matrix; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_5__ {struct drm_color_ctm* data; } ;


 int ARRAY_SIZE (int*) ;
 int CGM_PIPE_CSC_COEFF01 (int) ;
 int CGM_PIPE_CSC_COEFF23 (int) ;
 int CGM_PIPE_CSC_COEFF45 (int) ;
 int CGM_PIPE_CSC_COEFF67 (int) ;
 int CGM_PIPE_CSC_COEFF8 (int) ;
 int CGM_PIPE_MODE (int) ;
 scalar_t__ CTM_COEFF_8_0 ;
 int I915_WRITE (int ,int) ;
 int clamp_val (int,int ,scalar_t__) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void cherryview_load_csc_matrix(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;

 if (crtc_state->base.ctm) {
  const struct drm_color_ctm *ctm = crtc_state->base.ctm->data;
  u16 coeffs[9] = {};
  int i;

  for (i = 0; i < ARRAY_SIZE(coeffs); i++) {
   u64 abs_coeff =
    ((1ULL << 63) - 1) & ctm->matrix[i];


   abs_coeff += 1 << (32 - 13);

   abs_coeff = clamp_val(abs_coeff, 0, CTM_COEFF_8_0 - 1);


   if (ctm->matrix[i] & (1ULL << 63))
    coeffs[i] = 1 << 15;
   coeffs[i] |= ((abs_coeff >> 32) & 7) << 12;
   coeffs[i] |= (abs_coeff >> 20) & 0xfff;
  }

  I915_WRITE(CGM_PIPE_CSC_COEFF01(pipe),
      coeffs[1] << 16 | coeffs[0]);
  I915_WRITE(CGM_PIPE_CSC_COEFF23(pipe),
      coeffs[3] << 16 | coeffs[2]);
  I915_WRITE(CGM_PIPE_CSC_COEFF45(pipe),
      coeffs[5] << 16 | coeffs[4]);
  I915_WRITE(CGM_PIPE_CSC_COEFF67(pipe),
      coeffs[7] << 16 | coeffs[6]);
  I915_WRITE(CGM_PIPE_CSC_COEFF8(pipe), coeffs[8]);
 }

 I915_WRITE(CGM_PIPE_MODE(pipe), crtc_state->cgm_mode);
}
