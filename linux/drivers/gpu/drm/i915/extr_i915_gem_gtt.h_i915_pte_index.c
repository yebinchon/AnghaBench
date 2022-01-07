
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u64 ;
typedef int const u32 ;


 int NUM_PTE (unsigned int) ;
 int const PAGE_SHIFT ;

__attribute__((used)) static inline u32 i915_pte_index(u64 address, unsigned int pde_shift)
{
 const u32 mask = NUM_PTE(pde_shift) - 1;

 return (address >> PAGE_SHIFT) & mask;
}
