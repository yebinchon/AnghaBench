
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ start; } ;
struct i915_vma {TYPE_1__ node; } ;
struct drm_i915_gem_relocation_entry {scalar_t__ delta; } ;


 int gen8_canonical_addr (scalar_t__) ;

__attribute__((used)) static inline u64
relocation_target(const struct drm_i915_gem_relocation_entry *reloc,
    const struct i915_vma *target)
{
 return gen8_canonical_addr((int)reloc->delta + target->node.start);
}
