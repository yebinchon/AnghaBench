
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int HAS_FBC (struct drm_i915_private*) ;

__attribute__((used)) static inline bool fbc_supported(struct drm_i915_private *dev_priv)
{
 return HAS_FBC(dev_priv);
}
