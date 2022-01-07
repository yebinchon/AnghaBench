
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int I915_PDE_MASK ;

__attribute__((used)) static inline u32 i915_pde_index(u64 addr, u32 shift)
{
 return (addr >> shift) & I915_PDE_MASK;
}
