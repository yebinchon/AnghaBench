
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int gen6_pte_t ;
typedef enum i915_cache_level { ____Placeholder_i915_cache_level } i915_cache_level ;
typedef int dma_addr_t ;


 int GEN6_PTE_ADDR_ENCODE (int ) ;
 int GEN6_PTE_CACHE_LLC ;
 int GEN6_PTE_UNCACHED ;
 int GEN6_PTE_VALID ;
 int GEN7_PTE_CACHE_L3_LLC ;



 int MISSING_CASE (int) ;

__attribute__((used)) static u64 ivb_pte_encode(dma_addr_t addr,
     enum i915_cache_level level,
     u32 flags)
{
 gen6_pte_t pte = GEN6_PTE_VALID;
 pte |= GEN6_PTE_ADDR_ENCODE(addr);

 switch (level) {
 case 130:
  pte |= GEN7_PTE_CACHE_L3_LLC;
  break;
 case 129:
  pte |= GEN6_PTE_CACHE_LLC;
  break;
 case 128:
  pte |= GEN6_PTE_UNCACHED;
  break;
 default:
  MISSING_CASE(level);
 }

 return pte;
}
