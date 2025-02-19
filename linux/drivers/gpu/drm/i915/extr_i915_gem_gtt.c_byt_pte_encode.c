
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int gen6_pte_t ;
typedef enum i915_cache_level { ____Placeholder_i915_cache_level } i915_cache_level ;
typedef int dma_addr_t ;


 int BYT_PTE_SNOOPED_BY_CPU_CACHES ;
 int BYT_PTE_WRITEABLE ;
 int GEN6_PTE_ADDR_ENCODE (int ) ;
 int GEN6_PTE_VALID ;
 int I915_CACHE_NONE ;
 int PTE_READ_ONLY ;

__attribute__((used)) static u64 byt_pte_encode(dma_addr_t addr,
     enum i915_cache_level level,
     u32 flags)
{
 gen6_pte_t pte = GEN6_PTE_VALID;
 pte |= GEN6_PTE_ADDR_ENCODE(addr);

 if (!(flags & PTE_READ_ONLY))
  pte |= BYT_PTE_WRITEABLE;

 if (level != I915_CACHE_NONE)
  pte |= BYT_PTE_SNOOPED_BY_CPU_CACHES;

 return pte;
}
