
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct i915_address_space {int dummy; } ;
typedef enum i915_cache_level { ____Placeholder_i915_cache_level } i915_cache_level ;
typedef int dma_addr_t ;



__attribute__((used)) static void mock_insert_page(struct i915_address_space *vm,
        dma_addr_t addr,
        u64 offset,
        enum i915_cache_level level,
        u32 flags)
{
}
