
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_2__ adjusted_mode; int crtc; } ;
struct intel_crtc_state {int pipe_bpp; int gamma_mode; scalar_t__ limited_color_range; TYPE_3__ base; scalar_t__ dither; scalar_t__ double_wide; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;


 int BUG () ;
 int DRM_MODE_FLAG_INTERLACE ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int INTEL_OUTPUT_SDVO ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_G4X (struct drm_i915_private*) ;
 scalar_t__ IS_I830 (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int PIPECONF (int ) ;
 int PIPECONF_10BPC ;
 int PIPECONF_6BPC ;
 int PIPECONF_8BPC ;
 int PIPECONF_COLOR_RANGE_SELECT ;
 int PIPECONF_DITHER_EN ;
 int PIPECONF_DITHER_TYPE_SP ;
 int PIPECONF_DOUBLE_WIDE ;
 int PIPECONF_ENABLE ;
 int PIPECONF_GAMMA_MODE (int ) ;
 int PIPECONF_INTERLACE_W_FIELD_INDICATION ;
 int PIPECONF_INTERLACE_W_SYNC_SHIFT ;
 int PIPECONF_PROGRESSIVE ;
 int POSTING_READ (int ) ;
 scalar_t__ intel_crtc_has_type (struct intel_crtc_state const*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 u32 pipeconf;

 pipeconf = 0;


 if (IS_I830(dev_priv))
  pipeconf |= I915_READ(PIPECONF(crtc->pipe)) & PIPECONF_ENABLE;

 if (crtc_state->double_wide)
  pipeconf |= PIPECONF_DOUBLE_WIDE;


 if (IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
     IS_CHERRYVIEW(dev_priv)) {

  if (crtc_state->dither && crtc_state->pipe_bpp != 30)
   pipeconf |= PIPECONF_DITHER_EN |
        PIPECONF_DITHER_TYPE_SP;

  switch (crtc_state->pipe_bpp) {
  case 18:
   pipeconf |= PIPECONF_6BPC;
   break;
  case 24:
   pipeconf |= PIPECONF_8BPC;
   break;
  case 30:
   pipeconf |= PIPECONF_10BPC;
   break;
  default:

   BUG();
  }
 }

 if (crtc_state->base.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE) {
  if (INTEL_GEN(dev_priv) < 4 ||
      intel_crtc_has_type(crtc_state, INTEL_OUTPUT_SDVO))
   pipeconf |= PIPECONF_INTERLACE_W_FIELD_INDICATION;
  else
   pipeconf |= PIPECONF_INTERLACE_W_SYNC_SHIFT;
 } else {
  pipeconf |= PIPECONF_PROGRESSIVE;
 }

 if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
      crtc_state->limited_color_range)
  pipeconf |= PIPECONF_COLOR_RANGE_SELECT;

 pipeconf |= PIPECONF_GAMMA_MODE(crtc_state->gamma_mode);

 I915_WRITE(PIPECONF(crtc->pipe), pipeconf);
 POSTING_READ(PIPECONF(crtc->pipe));
}
