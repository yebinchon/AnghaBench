
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct i915_vma {int vm_link; int flags; int pages; int node; } ;
struct TYPE_9__ {int mutex; int bound_list; } ;
struct i915_ggtt {TYPE_4__ vm; } ;
struct drm_mm_node {void* size; void* start; } ;
struct TYPE_7__ {int stolen_lock; int stolen; } ;
struct TYPE_6__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_2__ mm; TYPE_1__ drm; struct i915_ggtt ggtt; } ;
struct TYPE_8__ {int pages; } ;
struct drm_i915_gem_object {int bind_count; TYPE_3__ mm; int cache_level; } ;
typedef void* resource_size_t ;


 int DRM_DEBUG_DRIVER (char*,...) ;
 int GEM_BUG_ON (int) ;
 int GFP_KERNEL ;
 int I915_GTT_MIN_ALIGNMENT ;
 void* I915_GTT_OFFSET_NONE ;
 int I915_GTT_PAGE_SIZE ;
 int I915_VMA_GLOBAL_BIND ;
 int IS_ALIGNED (void*,int ) ;
 scalar_t__ IS_ERR (struct i915_vma*) ;
 int PTR_ERR (struct i915_vma*) ;
 scalar_t__ WARN_ON (int) ;
 int __i915_vma_set_map_and_fenceable (struct i915_vma*) ;
 struct drm_i915_gem_object* _i915_gem_object_create_stolen (struct drm_i915_private*,struct drm_mm_node*) ;
 int atomic_inc (int *) ;
 int drm_mm_initialized (int *) ;
 int drm_mm_node_allocated (int *) ;
 int drm_mm_reserve_node (int *,struct drm_mm_node*) ;
 int i915_gem_gtt_reserve (TYPE_4__*,int *,void*,void*,int ,int ) ;
 int i915_gem_object_is_shrinkable (struct drm_i915_gem_object*) ;
 int i915_gem_object_pin_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_put (struct drm_i915_gem_object*) ;
 int i915_gem_object_unpin_pages (struct drm_i915_gem_object*) ;
 int i915_gem_stolen_remove_node (struct drm_i915_private*,struct drm_mm_node*) ;
 struct i915_vma* i915_vma_instance (struct drm_i915_gem_object*,TYPE_4__*,int *) ;
 int kfree (struct drm_mm_node*) ;
 struct drm_mm_node* kzalloc (int,int ) ;
 int list_move_tail (int *,int *) ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct drm_i915_gem_object *
i915_gem_object_create_stolen_for_preallocated(struct drm_i915_private *dev_priv,
            resource_size_t stolen_offset,
            resource_size_t gtt_offset,
            resource_size_t size)
{
 struct i915_ggtt *ggtt = &dev_priv->ggtt;
 struct drm_i915_gem_object *obj;
 struct drm_mm_node *stolen;
 struct i915_vma *vma;
 int ret;

 if (!drm_mm_initialized(&dev_priv->mm.stolen))
  return ((void*)0);

 lockdep_assert_held(&dev_priv->drm.struct_mutex);

 DRM_DEBUG_DRIVER("creating preallocated stolen object: stolen_offset=%pa, gtt_offset=%pa, size=%pa\n",
    &stolen_offset, &gtt_offset, &size);


 if (WARN_ON(size == 0) ||
     WARN_ON(!IS_ALIGNED(size, I915_GTT_PAGE_SIZE)) ||
     WARN_ON(!IS_ALIGNED(stolen_offset, I915_GTT_MIN_ALIGNMENT)))
  return ((void*)0);

 stolen = kzalloc(sizeof(*stolen), GFP_KERNEL);
 if (!stolen)
  return ((void*)0);

 stolen->start = stolen_offset;
 stolen->size = size;
 mutex_lock(&dev_priv->mm.stolen_lock);
 ret = drm_mm_reserve_node(&dev_priv->mm.stolen, stolen);
 mutex_unlock(&dev_priv->mm.stolen_lock);
 if (ret) {
  DRM_DEBUG_DRIVER("failed to allocate stolen space\n");
  kfree(stolen);
  return ((void*)0);
 }

 obj = _i915_gem_object_create_stolen(dev_priv, stolen);
 if (obj == ((void*)0)) {
  DRM_DEBUG_DRIVER("failed to allocate stolen object\n");
  i915_gem_stolen_remove_node(dev_priv, stolen);
  kfree(stolen);
  return ((void*)0);
 }


 if (gtt_offset == I915_GTT_OFFSET_NONE)
  return obj;

 ret = i915_gem_object_pin_pages(obj);
 if (ret)
  goto err;

 vma = i915_vma_instance(obj, &ggtt->vm, ((void*)0));
 if (IS_ERR(vma)) {
  ret = PTR_ERR(vma);
  goto err_pages;
 }






 ret = i915_gem_gtt_reserve(&ggtt->vm, &vma->node,
       size, gtt_offset, obj->cache_level,
       0);
 if (ret) {
  DRM_DEBUG_DRIVER("failed to allocate stolen GTT space\n");
  goto err_pages;
 }

 GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));

 vma->pages = obj->mm.pages;
 vma->flags |= I915_VMA_GLOBAL_BIND;
 __i915_vma_set_map_and_fenceable(vma);

 mutex_lock(&ggtt->vm.mutex);
 list_move_tail(&vma->vm_link, &ggtt->vm.bound_list);
 mutex_unlock(&ggtt->vm.mutex);

 GEM_BUG_ON(i915_gem_object_is_shrinkable(obj));
 atomic_inc(&obj->bind_count);

 return obj;

err_pages:
 i915_gem_object_unpin_pages(obj);
err:
 i915_gem_object_put(obj);
 return ((void*)0);
}
