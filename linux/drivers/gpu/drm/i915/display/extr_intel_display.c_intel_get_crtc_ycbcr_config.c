
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_crtc_state {int lspcon_downsampling; int output_format; } ;
struct TYPE_2__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum intel_output_format { ____Placeholder_intel_output_format } intel_output_format ;


 int I915_READ (int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int INTEL_OUTPUT_FORMAT_INVALID ;
 int INTEL_OUTPUT_FORMAT_RGB ;
 int INTEL_OUTPUT_FORMAT_YCBCR420 ;
 int INTEL_OUTPUT_FORMAT_YCBCR444 ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 int PIPEMISC (int ) ;
 int PIPEMISC_OUTPUT_COLORSPACE_YUV ;
 int PIPEMISC_YUV420_ENABLE ;
 int PIPEMISC_YUV420_MODE_FULL_BLEND ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void intel_get_crtc_ycbcr_config(struct intel_crtc *crtc,
     struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum intel_output_format output = INTEL_OUTPUT_FORMAT_RGB;

 pipe_config->lspcon_downsampling = 0;

 if (IS_BROADWELL(dev_priv) || INTEL_GEN(dev_priv) >= 9) {
  u32 tmp = I915_READ(PIPEMISC(crtc->pipe));

  if (tmp & PIPEMISC_OUTPUT_COLORSPACE_YUV) {
   bool ycbcr420_enabled = tmp & PIPEMISC_YUV420_ENABLE;
   bool blend = tmp & PIPEMISC_YUV420_MODE_FULL_BLEND;

   if (ycbcr420_enabled) {

    if (!blend)
     output = INTEL_OUTPUT_FORMAT_INVALID;
    else if (!(IS_GEMINILAKE(dev_priv) ||
        INTEL_GEN(dev_priv) >= 10))
     output = INTEL_OUTPUT_FORMAT_INVALID;
    else
     output = INTEL_OUTPUT_FORMAT_YCBCR420;
   } else {
    pipe_config->lspcon_downsampling = 1;
    output = INTEL_OUTPUT_FORMAT_YCBCR444;
   }
  }
 }

 pipe_config->output_format = output;
}
