
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int gen6_pte_t ;
typedef enum i915_cache_level { ____Placeholder_i915_cache_level } i915_cache_level ;
typedef int dma_addr_t ;


 int GEN6_PTE_VALID ;
 int HSW_PTE_ADDR_ENCODE (int ) ;
 int HSW_WB_LLC_AGE3 ;
 int I915_CACHE_NONE ;

__attribute__((used)) static u64 hsw_pte_encode(dma_addr_t addr,
     enum i915_cache_level level,
     u32 flags)
{
 gen6_pte_t pte = GEN6_PTE_VALID;
 pte |= HSW_PTE_ADDR_ENCODE(addr);

 if (level != I915_CACHE_NONE)
  pte |= HSW_WB_LLC_AGE3;

 return pte;
}
