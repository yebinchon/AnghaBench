
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {int pipe_bpp; scalar_t__ output_format; int active_planes; scalar_t__ dither; TYPE_1__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;


 int BIT (int ) ;
 int I915_WRITE (int ,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ INTEL_OUTPUT_FORMAT_YCBCR420 ;
 scalar_t__ INTEL_OUTPUT_FORMAT_YCBCR444 ;
 int MISSING_CASE (int) ;
 int PIPEMISC (int ) ;
 int PIPEMISC_DITHER_10_BPC ;
 int PIPEMISC_DITHER_12_BPC ;
 int PIPEMISC_DITHER_6_BPC ;
 int PIPEMISC_DITHER_8_BPC ;
 int PIPEMISC_DITHER_ENABLE ;
 int PIPEMISC_DITHER_TYPE_SP ;
 int PIPEMISC_HDR_MODE_PRECISION ;
 int PIPEMISC_OUTPUT_COLORSPACE_YUV ;
 int PIPEMISC_YUV420_ENABLE ;
 int PIPEMISC_YUV420_MODE_FULL_BLEND ;
 int PLANE_CURSOR ;
 int icl_hdr_plane_mask () ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 u32 val = 0;

 switch (crtc_state->pipe_bpp) {
 case 18:
  val |= PIPEMISC_DITHER_6_BPC;
  break;
 case 24:
  val |= PIPEMISC_DITHER_8_BPC;
  break;
 case 30:
  val |= PIPEMISC_DITHER_10_BPC;
  break;
 case 36:
  val |= PIPEMISC_DITHER_12_BPC;
  break;
 default:
  MISSING_CASE(crtc_state->pipe_bpp);
  break;
 }

 if (crtc_state->dither)
  val |= PIPEMISC_DITHER_ENABLE | PIPEMISC_DITHER_TYPE_SP;

 if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
     crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444)
  val |= PIPEMISC_OUTPUT_COLORSPACE_YUV;

 if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
  val |= PIPEMISC_YUV420_ENABLE |
   PIPEMISC_YUV420_MODE_FULL_BLEND;

 if (INTEL_GEN(dev_priv) >= 11 &&
     (crtc_state->active_planes & ~(icl_hdr_plane_mask() |
        BIT(PLANE_CURSOR))) == 0)
  val |= PIPEMISC_HDR_MODE_PRECISION;

 I915_WRITE(PIPEMISC(crtc->pipe), val);
}
