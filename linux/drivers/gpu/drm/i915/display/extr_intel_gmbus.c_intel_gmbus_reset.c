
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int GMBUS0 ;
 int GMBUS4 ;
 int I915_WRITE (int ,int ) ;

void
intel_gmbus_reset(struct drm_i915_private *dev_priv)
{
 I915_WRITE(GMBUS0, 0);
 I915_WRITE(GMBUS4, 0);
}
