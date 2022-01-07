
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int GFX_FLSH_CNTL_EN ;
 int GFX_FLSH_CNTL_GEN6 ;
 int I915_WRITE (int ,int ) ;
 int mmio_hw_access_post (struct drm_i915_private*) ;
 int mmio_hw_access_pre (struct drm_i915_private*) ;

__attribute__((used)) static void ggtt_invalidate(struct drm_i915_private *dev_priv)
{
 mmio_hw_access_pre(dev_priv);
 I915_WRITE(GFX_FLSH_CNTL_GEN6, GFX_FLSH_CNTL_EN);
 mmio_hw_access_post(dev_priv);
}
