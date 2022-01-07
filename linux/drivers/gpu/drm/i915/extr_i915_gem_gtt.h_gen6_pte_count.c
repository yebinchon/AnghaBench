
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GEN6_PDE_SHIFT ;
 int i915_pte_count (int ,int ,int ) ;

__attribute__((used)) static inline u32 gen6_pte_count(u32 addr, u32 length)
{
 return i915_pte_count(addr, length, GEN6_PDE_SHIFT);
}
