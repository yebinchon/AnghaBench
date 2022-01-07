
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int start; } ;
struct i915_vma {TYPE_1__ node; } ;
struct drm_i915_gem_exec_object2 {int pad_to_size; int offset; scalar_t__ alignment; } ;


 int BATCH_OFFSET_BIAS ;
 unsigned int EXEC_OBJECT_PINNED ;
 unsigned int EXEC_OBJECT_SUPPORTS_48B_ADDRESS ;
 int IS_ALIGNED (int,scalar_t__) ;
 unsigned int __EXEC_OBJECT_NEEDS_BIAS ;
 unsigned int __EXEC_OBJECT_NEEDS_MAP ;
 int i915_vma_is_map_and_fenceable (struct i915_vma const*) ;

__attribute__((used)) static bool
eb_vma_misplaced(const struct drm_i915_gem_exec_object2 *entry,
   const struct i915_vma *vma,
   unsigned int flags)
{
 if (vma->node.size < entry->pad_to_size)
  return 1;

 if (entry->alignment && !IS_ALIGNED(vma->node.start, entry->alignment))
  return 1;

 if (flags & EXEC_OBJECT_PINNED &&
     vma->node.start != entry->offset)
  return 1;

 if (flags & __EXEC_OBJECT_NEEDS_BIAS &&
     vma->node.start < BATCH_OFFSET_BIAS)
  return 1;

 if (!(flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS) &&
     (vma->node.start + vma->node.size - 1) >> 32)
  return 1;

 if (flags & __EXEC_OBJECT_NEEDS_MAP &&
     !i915_vma_is_map_and_fenceable(vma))
  return 1;

 return 0;
}
