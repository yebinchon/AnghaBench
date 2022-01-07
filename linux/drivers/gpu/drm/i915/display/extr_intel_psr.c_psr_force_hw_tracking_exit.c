
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pipe; } ;
struct drm_i915_private {TYPE_1__ psr; } ;


 int CURSURFLIVE (int ) ;
 int I915_WRITE (int ,int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int intel_psr_exit (struct drm_i915_private*) ;

__attribute__((used)) static void psr_force_hw_tracking_exit(struct drm_i915_private *dev_priv)
{
 if (INTEL_GEN(dev_priv) >= 9)
  I915_WRITE(CURSURFLIVE(dev_priv->psr.pipe), 0);
 else




  intel_psr_exit(dev_priv);
}
