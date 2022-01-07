
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 scalar_t__ HAS_PCH_NOP (struct drm_i915_private*) ;
 scalar_t__ I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int SDEIER ;
 int WARN_ON (int) ;

__attribute__((used)) static void ibx_irq_pre_postinstall(struct drm_i915_private *dev_priv)
{
 if (HAS_PCH_NOP(dev_priv))
  return;

 WARN_ON(I915_READ(SDEIER) != 0);
 I915_WRITE(SDEIER, 0xffffffff);
 POSTING_READ(SDEIER);
}
