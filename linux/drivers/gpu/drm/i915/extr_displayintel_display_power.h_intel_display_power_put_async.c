
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef int intel_wakeref_t ;
typedef enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;


 int __intel_display_power_put_async (struct drm_i915_private*,int,int) ;

__attribute__((used)) static inline void
intel_display_power_put_async(struct drm_i915_private *i915,
         enum intel_display_power_domain domain,
         intel_wakeref_t wakeref)
{
 __intel_display_power_put_async(i915, domain, -1);
}
