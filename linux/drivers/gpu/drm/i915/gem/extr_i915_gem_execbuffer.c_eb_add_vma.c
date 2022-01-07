
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int start; } ;
struct i915_vma {int* exec_flags; TYPE_3__ node; int exec_link; int reloc_link; int exec_node; int exec_handle; } ;
struct TYPE_4__ {scalar_t__ has_fence; } ;
struct i915_execbuffer {int* flags; int unbound; TYPE_2__* args; struct i915_vma* batch; TYPE_1__ reloc_cache; struct i915_vma** vma; int relocs; int lut_size; int * buckets; struct drm_i915_gem_exec_object2* exec; } ;
struct drm_i915_gem_exec_object2 {int flags; int offset; scalar_t__ relocation_count; int handle; } ;
struct TYPE_5__ {int flags; } ;


 int EXEC_OBJECT_NEEDS_FENCE ;
 int EXEC_OBJECT_PINNED ;
 int GEM_BUG_ON (int ) ;
 int UPDATE ;
 int __EXEC_HAS_RELOC ;
 int __EXEC_OBJECT_NEEDS_BIAS ;
 int __EXEC_VALIDATED ;
 scalar_t__ drm_mm_node_allocated (TYPE_3__*) ;
 scalar_t__ eb_pin_vma (struct i915_execbuffer*,struct drm_i915_gem_exec_object2*,struct i915_vma*) ;
 int eb_unreserve_vma (struct i915_vma*,int*) ;
 int eb_validate_vma (struct i915_execbuffer*,struct drm_i915_gem_exec_object2*,struct i915_vma*) ;
 size_t hash_32 (int ,int ) ;
 int hlist_add_head (int *,int *) ;
 int i915_vma_is_closed (struct i915_vma*) ;
 int i915_vma_unbind (struct i915_vma*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
eb_add_vma(struct i915_execbuffer *eb,
    unsigned int i, unsigned batch_idx,
    struct i915_vma *vma)
{
 struct drm_i915_gem_exec_object2 *entry = &eb->exec[i];
 int err;

 GEM_BUG_ON(i915_vma_is_closed(vma));

 if (!(eb->args->flags & __EXEC_VALIDATED)) {
  err = eb_validate_vma(eb, entry, vma);
  if (unlikely(err))
   return err;
 }

 if (eb->lut_size > 0) {
  vma->exec_handle = entry->handle;
  hlist_add_head(&vma->exec_node,
          &eb->buckets[hash_32(entry->handle,
          eb->lut_size)]);
 }

 if (entry->relocation_count)
  list_add_tail(&vma->reloc_link, &eb->relocs);







 eb->vma[i] = vma;
 eb->flags[i] = entry->flags;
 vma->exec_flags = &eb->flags[i];
 if (i == batch_idx) {
  if (entry->relocation_count &&
      !(eb->flags[i] & EXEC_OBJECT_PINNED))
   eb->flags[i] |= __EXEC_OBJECT_NEEDS_BIAS;
  if (eb->reloc_cache.has_fence)
   eb->flags[i] |= EXEC_OBJECT_NEEDS_FENCE;

  eb->batch = vma;
 }

 err = 0;
 if (eb_pin_vma(eb, entry, vma)) {
  if (entry->offset != vma->node.start) {
   entry->offset = vma->node.start | UPDATE;
   eb->args->flags |= __EXEC_HAS_RELOC;
  }
 } else {
  eb_unreserve_vma(vma, vma->exec_flags);

  list_add_tail(&vma->exec_link, &eb->unbound);
  if (drm_mm_node_allocated(&vma->node))
   err = i915_vma_unbind(vma);
  if (unlikely(err))
   vma->exec_flags = ((void*)0);
 }
 return err;
}
