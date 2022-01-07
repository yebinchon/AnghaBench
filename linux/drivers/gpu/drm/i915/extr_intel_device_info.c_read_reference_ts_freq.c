
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int GEN9_TIMESTAMP_OVERRIDE ;
 int GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DENOMINATOR_MASK ;
 int GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DENOMINATOR_SHIFT ;
 int GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DIVIDER_MASK ;
 int GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DIVIDER_SHIFT ;
 int I915_READ (int ) ;

__attribute__((used)) static u32 read_reference_ts_freq(struct drm_i915_private *dev_priv)
{
 u32 ts_override = I915_READ(GEN9_TIMESTAMP_OVERRIDE);
 u32 base_freq, frac_freq;

 base_freq = ((ts_override & GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DIVIDER_MASK) >>
       GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DIVIDER_SHIFT) + 1;
 base_freq *= 1000;

 frac_freq = ((ts_override &
        GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DENOMINATOR_MASK) >>
       GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DENOMINATOR_SHIFT);
 frac_freq = 1000 / (frac_freq + 1);

 return base_freq + frac_freq;
}
