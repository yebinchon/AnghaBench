
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct i915_oa_reg {int value; int addr; } ;
struct drm_i915_private {int dummy; } ;


 int I915_WRITE (int ,int ) ;

__attribute__((used)) static void config_oa_regs(struct drm_i915_private *dev_priv,
      const struct i915_oa_reg *regs,
      u32 n_regs)
{
 u32 i;

 for (i = 0; i < n_regs; i++) {
  const struct i915_oa_reg *reg = regs + i;

  I915_WRITE(reg->addr, reg->value);
 }
}
