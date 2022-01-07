
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_device_info {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ INTEL_INFO (struct drm_i915_private*) ;

__attribute__((used)) static inline struct intel_device_info *
mkwrite_device_info(struct drm_i915_private *dev_priv)
{
 return (struct intel_device_info *)INTEL_INFO(dev_priv);
}
