
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u64 ;
struct i915_address_space {int mm; TYPE_3__* i915; int total; } ;
struct drm_mm_node {unsigned long color; void* start; void* size; } ;
struct TYPE_5__ {TYPE_1__* alias; } ;
struct TYPE_6__ {TYPE_2__ ggtt; } ;
struct TYPE_4__ {struct i915_address_space vm; } ;


 int ENOSPC ;
 int GEM_BUG_ON (int) ;
 int I915_GTT_MIN_ALIGNMENT ;
 int I915_GTT_PAGE_SIZE ;
 int IS_ALIGNED (void*,int ) ;
 unsigned int PIN_NOEVICT ;
 int drm_mm_node_allocated (struct drm_mm_node*) ;
 int drm_mm_reserve_node (int *,struct drm_mm_node*) ;
 int i915_gem_evict_for_node (struct i915_address_space*,struct drm_mm_node*,unsigned int) ;
 int range_overflows (void*,void*,int ) ;

int i915_gem_gtt_reserve(struct i915_address_space *vm,
    struct drm_mm_node *node,
    u64 size, u64 offset, unsigned long color,
    unsigned int flags)
{
 int err;

 GEM_BUG_ON(!size);
 GEM_BUG_ON(!IS_ALIGNED(size, I915_GTT_PAGE_SIZE));
 GEM_BUG_ON(!IS_ALIGNED(offset, I915_GTT_MIN_ALIGNMENT));
 GEM_BUG_ON(range_overflows(offset, size, vm->total));
 GEM_BUG_ON(vm == &vm->i915->ggtt.alias->vm);
 GEM_BUG_ON(drm_mm_node_allocated(node));

 node->size = size;
 node->start = offset;
 node->color = color;

 err = drm_mm_reserve_node(&vm->mm, node);
 if (err != -ENOSPC)
  return err;

 if (flags & PIN_NOEVICT)
  return -ENOSPC;

 err = i915_gem_evict_for_node(vm, node, flags);
 if (err == 0)
  err = drm_mm_reserve_node(&vm->mm, node);

 return err;
}
