
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_address_space {struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;


 int GFX_FLSH_CNTL_GEN6 ;
 int POSTING_READ (int ) ;

__attribute__((used)) static void bxt_vtd_ggtt_wa(struct i915_address_space *vm)
{
 struct drm_i915_private *dev_priv = vm->i915;
 POSTING_READ(GFX_FLSH_CNTL_GEN6);
}
