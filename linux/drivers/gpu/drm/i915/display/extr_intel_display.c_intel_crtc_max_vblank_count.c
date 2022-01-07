
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* crtc; } ;
struct intel_crtc_state {int output_types; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int BIT (int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int INTEL_OUTPUT_TVOUT ;
 scalar_t__ IS_G4X (struct drm_i915_private*) ;
 scalar_t__ IS_I965GM (struct drm_i915_private*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(crtc_state->base.crtc->dev);





 if (IS_I965GM(dev_priv) &&
     (crtc_state->output_types & BIT(INTEL_OUTPUT_TVOUT)))
  return 0;

 if (INTEL_GEN(dev_priv) >= 5 || IS_G4X(dev_priv))
  return 0xffffffff;
 else if (INTEL_GEN(dev_priv) >= 3)
  return 0xffffff;
 else
  return 0;
}
