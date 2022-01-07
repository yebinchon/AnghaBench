
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i915_address_space {int dummy; } ;


 int PAGE_SHIFT ;
 int intel_gtt_clear_range (int,int) ;

__attribute__((used)) static void i915_ggtt_clear_range(struct i915_address_space *vm,
      u64 start, u64 length)
{
 intel_gtt_clear_range(start >> PAGE_SHIFT, length >> PAGE_SHIFT);
}
