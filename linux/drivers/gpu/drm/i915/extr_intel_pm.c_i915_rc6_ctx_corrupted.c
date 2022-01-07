
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int GEN8_RC6_CTX_INFO ;
 int I915_READ (int ) ;

__attribute__((used)) static bool i915_rc6_ctx_corrupted(struct drm_i915_private *dev_priv)
{
 return !I915_READ(GEN8_RC6_CTX_INFO);
}
