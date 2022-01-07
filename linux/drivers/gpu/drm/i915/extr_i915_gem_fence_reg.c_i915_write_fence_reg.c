
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_uncore {int dummy; } ;
struct TYPE_3__ {int start; } ;
struct i915_vma {unsigned int fence_size; TYPE_1__ node; int obj; } ;
struct i915_fence_reg {int id; TYPE_2__* i915; } ;
typedef int i915_reg_t ;
struct TYPE_4__ {struct intel_uncore uncore; } ;


 int BIT (int ) ;
 int FENCE_REG (int ) ;
 int GEM_BUG_ON (int) ;
 scalar_t__ HAS_128_BYTE_Y_TILING (TYPE_2__*) ;
 int I830_FENCE_PITCH_SHIFT ;
 int I830_FENCE_REG_VALID ;
 int I830_FENCE_TILING_Y_SHIFT ;
 int I915_FENCE_SIZE_BITS (unsigned int) ;
 int I915_FENCE_START_MASK ;
 unsigned int I915_TILING_Y ;
 int IS_ALIGNED (int,unsigned int) ;
 unsigned int i915_gem_object_get_stride (int ) ;
 unsigned int i915_gem_object_get_tiling (int ) ;
 int i915_vma_is_map_and_fenceable (struct i915_vma*) ;
 int ilog2 (unsigned int) ;
 int intel_uncore_posting_read_fw (struct intel_uncore*,int ) ;
 int intel_uncore_write_fw (struct intel_uncore*,int ,int) ;
 int is_power_of_2 (unsigned int) ;
 int pipelined ;

__attribute__((used)) static void i915_write_fence_reg(struct i915_fence_reg *fence,
     struct i915_vma *vma)
{
 u32 val;

 val = 0;
 if (vma) {
  unsigned int tiling = i915_gem_object_get_tiling(vma->obj);
  bool is_y_tiled = tiling == I915_TILING_Y;
  unsigned int stride = i915_gem_object_get_stride(vma->obj);

  GEM_BUG_ON(!i915_vma_is_map_and_fenceable(vma));
  GEM_BUG_ON(vma->node.start & ~I915_FENCE_START_MASK);
  GEM_BUG_ON(!is_power_of_2(vma->fence_size));
  GEM_BUG_ON(!IS_ALIGNED(vma->node.start, vma->fence_size));

  if (is_y_tiled && HAS_128_BYTE_Y_TILING(fence->i915))
   stride /= 128;
  else
   stride /= 512;
  GEM_BUG_ON(!is_power_of_2(stride));

  val = vma->node.start;
  if (is_y_tiled)
   val |= BIT(I830_FENCE_TILING_Y_SHIFT);
  val |= I915_FENCE_SIZE_BITS(vma->fence_size);
  val |= ilog2(stride) << I830_FENCE_PITCH_SHIFT;

  val |= I830_FENCE_REG_VALID;
 }

 if (!pipelined) {
  struct intel_uncore *uncore = &fence->i915->uncore;
  i915_reg_t reg = FENCE_REG(fence->id);

  intel_uncore_write_fw(uncore, reg, val);
  intel_uncore_posting_read_fw(uncore, reg);
 }
}
