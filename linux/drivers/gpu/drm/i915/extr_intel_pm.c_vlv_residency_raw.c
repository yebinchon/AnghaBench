
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int lock; } ;
struct drm_i915_private {TYPE_1__ uncore; } ;
typedef int i915_reg_t ;


 scalar_t__ I915_READ_FW (int const) ;
 int I915_WRITE_FW (int ,int ) ;
 int VLV_COUNTER_CONTROL ;
 int VLV_COUNT_RANGE_HIGH ;
 int _MASKED_BIT_DISABLE (int ) ;
 int _MASKED_BIT_ENABLE (int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static u64 vlv_residency_raw(struct drm_i915_private *dev_priv,
        const i915_reg_t reg)
{
 u32 lower, upper, tmp;
 int loop = 2;





 lockdep_assert_held(&dev_priv->uncore.lock);
 I915_WRITE_FW(VLV_COUNTER_CONTROL,
        _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH));
 upper = I915_READ_FW(reg);
 do {
  tmp = upper;

  I915_WRITE_FW(VLV_COUNTER_CONTROL,
         _MASKED_BIT_DISABLE(VLV_COUNT_RANGE_HIGH));
  lower = I915_READ_FW(reg);

  I915_WRITE_FW(VLV_COUNTER_CONTROL,
         _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH));
  upper = I915_READ_FW(reg);
 } while (upper != tmp && --loop);







 return lower | (u64)upper << 8;
}
