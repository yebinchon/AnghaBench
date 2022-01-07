
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ size; int allocated; } ;
struct i915_vma {TYPE_1__ node; } ;


 int GEM_BUG_ON (int) ;
 int i915_vma_is_ggtt (struct i915_vma const*) ;
 int lower_32_bits (scalar_t__) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static inline u32 i915_ggtt_offset(const struct i915_vma *vma)
{
 GEM_BUG_ON(!i915_vma_is_ggtt(vma));
 GEM_BUG_ON(!vma->node.allocated);
 GEM_BUG_ON(upper_32_bits(vma->node.start));
 GEM_BUG_ON(upper_32_bits(vma->node.start + vma->node.size - 1));
 return lower_32_bits(vma->node.start);
}
