
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct radix_tree_root {int dummy; } ;
struct i915_vma {int node; int * exec_flags; int open_count; } ;
struct i915_lut_handle {int obj_link; TYPE_3__* ctx; int handle; } ;
struct i915_execbuffer {unsigned int buffer_count; TYPE_3__* gem_context; struct i915_vma** vma; TYPE_2__* args; int * flags; TYPE_5__* exec; TYPE_1__* context; int file; int unbound; int relocs; } ;
struct drm_i915_gem_object {int lut_list; } ;
struct TYPE_9__ {int handle; } ;
struct TYPE_8__ {int mutex; struct radix_tree_root handles_vma; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {int vm; } ;


 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int GEM_BUG_ON (int) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct i915_vma*) ;
 int PTR_ERR (struct i915_vma*) ;
 int __EXEC_VALIDATED ;
 int atomic_fetch_inc (int *) ;
 scalar_t__ drm_mm_node_allocated (int *) ;
 int eb_add_vma (struct i915_execbuffer*,unsigned int,unsigned int,struct i915_vma*) ;
 unsigned int eb_batch_index (struct i915_execbuffer*) ;
 int eb_reserve (struct i915_execbuffer*) ;
 scalar_t__ eb_vma_misplaced (TYPE_5__*,struct i915_vma*,int ) ;
 int i915_gem_context_is_banned (TYPE_3__*) ;
 int i915_gem_context_is_closed (TYPE_3__*) ;
 int i915_gem_object_lock (struct drm_i915_gem_object*) ;
 struct drm_i915_gem_object* i915_gem_object_lookup (int ,int ) ;
 int i915_gem_object_put (struct drm_i915_gem_object*) ;
 int i915_gem_object_unlock (struct drm_i915_gem_object*) ;
 struct i915_lut_handle* i915_lut_handle_alloc () ;
 int i915_lut_handle_free (struct i915_lut_handle*) ;
 struct i915_vma* i915_vma_instance (struct drm_i915_gem_object*,int ,int *) ;
 int i915_vma_reopen (struct i915_vma*) ;
 scalar_t__ likely (struct i915_vma*) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radix_tree_insert (struct radix_tree_root*,int ,struct i915_vma*) ;
 struct i915_vma* radix_tree_lookup (struct radix_tree_root*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int eb_lookup_vmas(struct i915_execbuffer *eb)
{
 struct radix_tree_root *handles_vma = &eb->gem_context->handles_vma;
 struct drm_i915_gem_object *obj;
 unsigned int i, batch;
 int err;

 if (unlikely(i915_gem_context_is_banned(eb->gem_context)))
  return -EIO;

 INIT_LIST_HEAD(&eb->relocs);
 INIT_LIST_HEAD(&eb->unbound);

 batch = eb_batch_index(eb);

 mutex_lock(&eb->gem_context->mutex);
 if (unlikely(i915_gem_context_is_closed(eb->gem_context))) {
  err = -ENOENT;
  goto err_ctx;
 }

 for (i = 0; i < eb->buffer_count; i++) {
  u32 handle = eb->exec[i].handle;
  struct i915_lut_handle *lut;
  struct i915_vma *vma;

  vma = radix_tree_lookup(handles_vma, handle);
  if (likely(vma))
   goto add_vma;

  obj = i915_gem_object_lookup(eb->file, handle);
  if (unlikely(!obj)) {
   err = -ENOENT;
   goto err_vma;
  }

  vma = i915_vma_instance(obj, eb->context->vm, ((void*)0));
  if (IS_ERR(vma)) {
   err = PTR_ERR(vma);
   goto err_obj;
  }

  lut = i915_lut_handle_alloc();
  if (unlikely(!lut)) {
   err = -ENOMEM;
   goto err_obj;
  }

  err = radix_tree_insert(handles_vma, handle, vma);
  if (unlikely(err)) {
   i915_lut_handle_free(lut);
   goto err_obj;
  }


  if (!atomic_fetch_inc(&vma->open_count))
   i915_vma_reopen(vma);
  lut->handle = handle;
  lut->ctx = eb->gem_context;

  i915_gem_object_lock(obj);
  list_add(&lut->obj_link, &obj->lut_list);
  i915_gem_object_unlock(obj);

add_vma:
  err = eb_add_vma(eb, i, batch, vma);
  if (unlikely(err))
   goto err_vma;

  GEM_BUG_ON(vma != eb->vma[i]);
  GEM_BUG_ON(vma->exec_flags != &eb->flags[i]);
  GEM_BUG_ON(drm_mm_node_allocated(&vma->node) &&
      eb_vma_misplaced(&eb->exec[i], vma, eb->flags[i]));
 }

 mutex_unlock(&eb->gem_context->mutex);

 eb->args->flags |= __EXEC_VALIDATED;
 return eb_reserve(eb);

err_obj:
 i915_gem_object_put(obj);
err_vma:
 eb->vma[i] = ((void*)0);
err_ctx:
 mutex_unlock(&eb->gem_context->mutex);
 return err;
}
