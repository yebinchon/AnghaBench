
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct intel_uncore {int dummy; } ;
struct TYPE_3__ {unsigned int start; } ;
struct i915_vma {unsigned int fence_size; int obj; TYPE_1__ node; } ;
struct i915_fence_reg {TYPE_2__* i915; int id; } ;
typedef int i915_reg_t ;
struct TYPE_4__ {struct intel_uncore uncore; } ;


 int BIT (int ) ;
 int FENCE_REG_965_HI (int ) ;
 int FENCE_REG_965_LO (int ) ;
 int FENCE_REG_GEN6_HI (int ) ;
 int FENCE_REG_GEN6_LO (int ) ;
 int GEM_BUG_ON (int) ;
 int GEN6_FENCE_PITCH_SHIFT ;
 scalar_t__ I915_TILING_Y ;
 int I965_FENCE_PAGE ;
 int I965_FENCE_PITCH_SHIFT ;
 int I965_FENCE_REG_VALID ;
 int I965_FENCE_TILING_Y_SHIFT ;
 int INTEL_GEN (TYPE_2__*) ;
 int IS_ALIGNED (unsigned int,int) ;
 unsigned int i915_gem_object_get_stride (int ) ;
 scalar_t__ i915_gem_object_get_tiling (int ) ;
 int i915_vma_is_map_and_fenceable (struct i915_vma*) ;
 int intel_uncore_posting_read_fw (struct intel_uncore*,int ) ;
 int intel_uncore_write_fw (struct intel_uncore*,int ,int ) ;
 int lower_32_bits (int) ;
 int pipelined ;
 int upper_32_bits (int) ;

__attribute__((used)) static void i965_write_fence_reg(struct i915_fence_reg *fence,
     struct i915_vma *vma)
{
 i915_reg_t fence_reg_lo, fence_reg_hi;
 int fence_pitch_shift;
 u64 val;

 if (INTEL_GEN(fence->i915) >= 6) {
  fence_reg_lo = FENCE_REG_GEN6_LO(fence->id);
  fence_reg_hi = FENCE_REG_GEN6_HI(fence->id);
  fence_pitch_shift = GEN6_FENCE_PITCH_SHIFT;

 } else {
  fence_reg_lo = FENCE_REG_965_LO(fence->id);
  fence_reg_hi = FENCE_REG_965_HI(fence->id);
  fence_pitch_shift = I965_FENCE_PITCH_SHIFT;
 }

 val = 0;
 if (vma) {
  unsigned int stride = i915_gem_object_get_stride(vma->obj);

  GEM_BUG_ON(!i915_vma_is_map_and_fenceable(vma));
  GEM_BUG_ON(!IS_ALIGNED(vma->node.start, I965_FENCE_PAGE));
  GEM_BUG_ON(!IS_ALIGNED(vma->fence_size, I965_FENCE_PAGE));
  GEM_BUG_ON(!IS_ALIGNED(stride, 128));

  val = (vma->node.start + vma->fence_size - I965_FENCE_PAGE) << 32;
  val |= vma->node.start;
  val |= (u64)((stride / 128) - 1) << fence_pitch_shift;
  if (i915_gem_object_get_tiling(vma->obj) == I915_TILING_Y)
   val |= BIT(I965_FENCE_TILING_Y_SHIFT);
  val |= I965_FENCE_REG_VALID;
 }

 if (!pipelined) {
  struct intel_uncore *uncore = &fence->i915->uncore;
  intel_uncore_write_fw(uncore, fence_reg_lo, 0);
  intel_uncore_posting_read_fw(uncore, fence_reg_lo);

  intel_uncore_write_fw(uncore, fence_reg_hi, upper_32_bits(val));
  intel_uncore_write_fw(uncore, fence_reg_lo, lower_32_bits(val));
  intel_uncore_posting_read_fw(uncore, fence_reg_lo);
 }
}
