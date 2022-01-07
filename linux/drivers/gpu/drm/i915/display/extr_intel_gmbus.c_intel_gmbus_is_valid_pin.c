
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {scalar_t__ name; } ;


 unsigned int ARRAY_SIZE (int ) ;
 scalar_t__ HAS_PCH_CNP (struct drm_i915_private*) ;
 scalar_t__ INTEL_PCH_TYPE (struct drm_i915_private*) ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_BC (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;
 scalar_t__ PCH_ICP ;
 TYPE_1__* get_gmbus_pin (struct drm_i915_private*,unsigned int) ;
 int gmbus_pins ;
 int gmbus_pins_bdw ;
 int gmbus_pins_bxt ;
 int gmbus_pins_cnp ;
 int gmbus_pins_icp ;
 int gmbus_pins_skl ;

bool intel_gmbus_is_valid_pin(struct drm_i915_private *dev_priv,
         unsigned int pin)
{
 unsigned int size;

 if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
  size = ARRAY_SIZE(gmbus_pins_icp);
 else if (HAS_PCH_CNP(dev_priv))
  size = ARRAY_SIZE(gmbus_pins_cnp);
 else if (IS_GEN9_LP(dev_priv))
  size = ARRAY_SIZE(gmbus_pins_bxt);
 else if (IS_GEN9_BC(dev_priv))
  size = ARRAY_SIZE(gmbus_pins_skl);
 else if (IS_BROADWELL(dev_priv))
  size = ARRAY_SIZE(gmbus_pins_bdw);
 else
  size = ARRAY_SIZE(gmbus_pins);

 return pin < size && get_gmbus_pin(dev_priv, pin)->name;
}
