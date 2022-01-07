
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct i915_address_space {int dummy; } ;
typedef enum i915_cache_level { ____Placeholder_i915_cache_level } i915_cache_level ;
typedef int dma_addr_t ;


 unsigned int AGP_USER_CACHED_MEMORY ;
 unsigned int AGP_USER_MEMORY ;
 int I915_CACHE_NONE ;
 int PAGE_SHIFT ;
 int intel_gtt_insert_page (int ,int,unsigned int) ;

__attribute__((used)) static void i915_ggtt_insert_page(struct i915_address_space *vm,
      dma_addr_t addr,
      u64 offset,
      enum i915_cache_level cache_level,
      u32 unused)
{
 unsigned int flags = (cache_level == I915_CACHE_NONE) ?
  AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;

 intel_gtt_insert_page(addr, offset >> PAGE_SHIFT, flags);
}
