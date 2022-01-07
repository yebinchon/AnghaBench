
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_pmu_sample {int cur; } ;


 scalar_t__ mul_u32_u32 (int ,int ) ;

__attribute__((used)) static void
add_sample_mult(struct i915_pmu_sample *sample, u32 val, u32 mul)
{
 sample->cur += mul_u32_u32(val, mul);
}
