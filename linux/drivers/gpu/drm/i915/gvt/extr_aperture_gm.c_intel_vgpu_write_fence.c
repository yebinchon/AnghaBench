
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct TYPE_2__ {struct i915_fence_reg** regs; } ;
struct intel_vgpu {TYPE_1__ fence; struct intel_gvt* gvt; } ;
struct intel_gvt {struct drm_i915_private* dev_priv; } ;
struct i915_fence_reg {int id; } ;
struct drm_i915_private {int runtime_pm; } ;
typedef int i915_reg_t ;


 int FENCE_REG_GEN6_HI (int ) ;
 int FENCE_REG_GEN6_LO (int ) ;
 int I915_WRITE (int ,int ) ;
 int POSTING_READ (int ) ;
 scalar_t__ WARN_ON (int) ;
 int assert_rpm_wakelock_held (int *) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;
 size_t vgpu_fence_sz (struct intel_vgpu*) ;

void intel_vgpu_write_fence(struct intel_vgpu *vgpu,
  u32 fence, u64 value)
{
 struct intel_gvt *gvt = vgpu->gvt;
 struct drm_i915_private *dev_priv = gvt->dev_priv;
 struct i915_fence_reg *reg;
 i915_reg_t fence_reg_lo, fence_reg_hi;

 assert_rpm_wakelock_held(&dev_priv->runtime_pm);

 if (WARN_ON(fence >= vgpu_fence_sz(vgpu)))
  return;

 reg = vgpu->fence.regs[fence];
 if (WARN_ON(!reg))
  return;

 fence_reg_lo = FENCE_REG_GEN6_LO(reg->id);
 fence_reg_hi = FENCE_REG_GEN6_HI(reg->id);

 I915_WRITE(fence_reg_lo, 0);
 POSTING_READ(fence_reg_lo);

 I915_WRITE(fence_reg_hi, upper_32_bits(value));
 I915_WRITE(fence_reg_lo, lower_32_bits(value));
 POSTING_READ(fence_reg_lo);
}
