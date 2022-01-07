
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct TYPE_4__ {int lock; int pages_pin_count; } ;
struct drm_i915_gem_object {TYPE_2__ mm; TYPE_1__* ops; int bind_count; } ;
typedef enum i915_mm_subclass { ____Placeholder_i915_mm_subclass } i915_mm_subclass ;
struct TYPE_3__ {int (* put_pages ) (struct drm_i915_gem_object*,struct sg_table*) ;} ;


 int EBUSY ;
 int EINVAL ;
 struct sg_table* ERR_PTR (int ) ;
 int GEM_BUG_ON (int ) ;
 int IS_ERR (struct sg_table*) ;
 struct sg_table* __i915_gem_object_unset_pages (struct drm_i915_gem_object*) ;
 int atomic_read (int *) ;
 scalar_t__ i915_gem_object_has_pinned_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_needs_async_cancel (struct drm_i915_gem_object*) ;
 int mutex_lock_nested (int *,int) ;
 int mutex_unlock (int *) ;
 int stub1 (struct drm_i915_gem_object*,struct sg_table*) ;
 scalar_t__ unlikely (int ) ;

int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj,
    enum i915_mm_subclass subclass)
{
 struct sg_table *pages;
 int err;

 if (i915_gem_object_has_pinned_pages(obj))
  return -EBUSY;

 GEM_BUG_ON(atomic_read(&obj->bind_count));


 mutex_lock_nested(&obj->mm.lock, subclass);
 if (unlikely(atomic_read(&obj->mm.pages_pin_count))) {
  err = -EBUSY;
  goto unlock;
 }






 pages = __i915_gem_object_unset_pages(obj);







 if (!pages && !i915_gem_object_needs_async_cancel(obj))
  pages = ERR_PTR(-EINVAL);

 if (!IS_ERR(pages))
  obj->ops->put_pages(obj, pages);

 err = 0;
unlock:
 mutex_unlock(&obj->mm.lock);

 return err;
}
