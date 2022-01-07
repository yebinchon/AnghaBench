
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct intel_sdvo {scalar_t__ port; int sdvo_reg; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;


 int GEN3_SDVOB ;
 int GEN3_SDVOC ;
 scalar_t__ HAS_PCH_IBX (struct drm_i915_private*) ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ PORT_B ;
 int POSTING_READ (int ) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static void intel_sdvo_write_sdvox(struct intel_sdvo *intel_sdvo, u32 val)
{
 struct drm_device *dev = intel_sdvo->base.base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 u32 bval = val, cval = val;
 int i;

 if (HAS_PCH_SPLIT(dev_priv)) {
  I915_WRITE(intel_sdvo->sdvo_reg, val);
  POSTING_READ(intel_sdvo->sdvo_reg);




  if (HAS_PCH_IBX(dev_priv)) {
   I915_WRITE(intel_sdvo->sdvo_reg, val);
   POSTING_READ(intel_sdvo->sdvo_reg);
  }
  return;
 }

 if (intel_sdvo->port == PORT_B)
  cval = I915_READ(GEN3_SDVOC);
 else
  bval = I915_READ(GEN3_SDVOB);






 for (i = 0; i < 2; i++) {
  I915_WRITE(GEN3_SDVOB, bval);
  POSTING_READ(GEN3_SDVOB);

  I915_WRITE(GEN3_SDVOC, cval);
  POSTING_READ(GEN3_SDVOC);
 }
}
