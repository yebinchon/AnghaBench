
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_display_mode {int flags; } ;
struct TYPE_4__ {struct drm_display_mode adjusted_mode; int crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct intel_crtc {int pipe; } ;
struct intel_crt {int adpa_reg; } ;
struct drm_i915_private {int dummy; } ;


 int ADPA_DAC_ENABLE ;
 int ADPA_HOTPLUG_BITS ;
 int ADPA_HSYNC_ACTIVE_HIGH ;
 int ADPA_HSYNC_CNTL_DISABLE ;
 int ADPA_PIPE_SEL (int ) ;
 int ADPA_PIPE_SEL_CPT (int ) ;
 int ADPA_VSYNC_ACTIVE_HIGH ;
 int ADPA_VSYNC_CNTL_DISABLE ;
 int BCLRPAT (int ) ;




 int DRM_MODE_FLAG_PHSYNC ;
 int DRM_MODE_FLAG_PVSYNC ;
 scalar_t__ HAS_PCH_CPT (struct drm_i915_private*) ;
 scalar_t__ HAS_PCH_LPT (struct drm_i915_private*) ;
 int HAS_PCH_SPLIT (struct drm_i915_private*) ;
 int I915_WRITE (int ,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 struct intel_crt* intel_encoder_to_crt (struct intel_encoder*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void intel_crt_set_dpms(struct intel_encoder *encoder,
          const struct intel_crtc_state *crtc_state,
          int mode)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_crt *crt = intel_encoder_to_crt(encoder);
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 const struct drm_display_mode *adjusted_mode = &crtc_state->base.adjusted_mode;
 u32 adpa;

 if (INTEL_GEN(dev_priv) >= 5)
  adpa = ADPA_HOTPLUG_BITS;
 else
  adpa = 0;

 if (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC)
  adpa |= ADPA_HSYNC_ACTIVE_HIGH;
 if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
  adpa |= ADPA_VSYNC_ACTIVE_HIGH;


 if (HAS_PCH_LPT(dev_priv))
  ;
 else if (HAS_PCH_CPT(dev_priv))
  adpa |= ADPA_PIPE_SEL_CPT(crtc->pipe);
 else
  adpa |= ADPA_PIPE_SEL(crtc->pipe);

 if (!HAS_PCH_SPLIT(dev_priv))
  I915_WRITE(BCLRPAT(crtc->pipe), 0);

 switch (mode) {
 case 130:
  adpa |= ADPA_DAC_ENABLE;
  break;
 case 129:
  adpa |= ADPA_DAC_ENABLE | ADPA_HSYNC_CNTL_DISABLE;
  break;
 case 128:
  adpa |= ADPA_DAC_ENABLE | ADPA_VSYNC_CNTL_DISABLE;
  break;
 case 131:
  adpa |= ADPA_HSYNC_CNTL_DISABLE | ADPA_VSYNC_CNTL_DISABLE;
  break;
 }

 I915_WRITE(crt->adpa_reg, adpa);
}
