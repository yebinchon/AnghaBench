
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;
struct intel_gmbus {int gpio_reg; struct drm_i915_private* dev_priv; } ;
struct drm_i915_private {struct intel_uncore uncore; } ;


 int GPIO_CLOCK_PULLUP_DISABLE ;
 int GPIO_DATA_PULLUP_DISABLE ;
 int IS_I830 (struct drm_i915_private*) ;
 int IS_I845G (struct drm_i915_private*) ;
 int intel_uncore_read_notrace (struct intel_uncore*,int ) ;

__attribute__((used)) static u32 get_reserved(struct intel_gmbus *bus)
{
 struct drm_i915_private *i915 = bus->dev_priv;
 struct intel_uncore *uncore = &i915->uncore;
 u32 reserved = 0;


 if (!IS_I830(i915) && !IS_I845G(i915))
  reserved = intel_uncore_read_notrace(uncore, bus->gpio_reg) &
      (GPIO_DATA_PULLUP_DISABLE |
       GPIO_CLOCK_PULLUP_DISABLE);

 return reserved;
}
