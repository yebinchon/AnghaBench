
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int DC_STATE_DEBUG ;
 int DC_STATE_DEBUG_MASK_CORES ;
 int DC_STATE_DEBUG_MASK_MEMORY_UP ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;
 int POSTING_READ (int ) ;

__attribute__((used)) static void gen9_set_dc_state_debugmask(struct drm_i915_private *dev_priv)
{
 u32 val, mask;

 mask = DC_STATE_DEBUG_MASK_MEMORY_UP;

 if (IS_GEN9_LP(dev_priv))
  mask |= DC_STATE_DEBUG_MASK_CORES;


 val = I915_READ(DC_STATE_DEBUG);
 if ((val & mask) != mask) {
  val |= mask;
  I915_WRITE(DC_STATE_DEBUG, val);
  POSTING_READ(DC_STATE_DEBUG);
 }
}
