
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 scalar_t__ HAS_PCH_CPT (struct drm_i915_private*) ;
 scalar_t__ HAS_PCH_IBX (struct drm_i915_private*) ;
 scalar_t__ HAS_PCH_LPT_H (struct drm_i915_private*) ;
 int PIPE_A ;

__attribute__((used)) static bool has_pch_trancoder(struct drm_i915_private *dev_priv,
         enum pipe pch_transcoder)
{
 return HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv) ||
  (HAS_PCH_LPT_H(dev_priv) && pch_transcoder == PIPE_A);
}
