
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct i915_pmu_sample {int cur; } ;



__attribute__((used)) static void
add_sample(struct i915_pmu_sample *sample, u32 val)
{
 sample->cur += val;
}
