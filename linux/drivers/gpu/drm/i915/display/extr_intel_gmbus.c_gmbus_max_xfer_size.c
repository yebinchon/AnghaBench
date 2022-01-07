
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 unsigned int GEN9_GMBUS_BYTE_COUNT_MAX ;
 unsigned int GMBUS_BYTE_COUNT_MAX ;
 int INTEL_GEN (struct drm_i915_private*) ;

__attribute__((used)) static inline
unsigned int gmbus_max_xfer_size(struct drm_i915_private *dev_priv)
{
 return INTEL_GEN(dev_priv) >= 9 ? GEN9_GMBUS_BYTE_COUNT_MAX :
        GMBUS_BYTE_COUNT_MAX;
}
